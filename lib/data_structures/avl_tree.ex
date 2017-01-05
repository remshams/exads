defmodule Exads.DataStructures.AVLTree do

  alias Exads.DataStructures.BinarySearchTree, as: BST

  defmodule Augmentation do

    @type augmentation :: %__MODULE__{height: integer, bf: integer}
    defstruct height: 0, bf: 0

  end


  @moduledoc """
  An implementation of the AVL Tree abstract data structure
  """

  @doc """
  Creates a new AVL Tree with the root's value as the given 'value'.
  """
  @spec new(any) :: BST.Node.bst_node

  def new(value), do: BST.new(value, &augment/1)

  def insert(tree, node_value) do
    BST.insert(tree, node_value, &augment/1)
  end


  @spec augment(BST.Node.bst_node | :leaf) :: BST.Node.bst_node
  defp augment(:leaf), do: :leaf
  defp augment(%BST.Node{left: :leaf, right: :leaf} = node), do: %{node | augmentation: %Augmentation{}}
  defp augment(%BST.Node{left: left, right: :leaf} = node) do
    %{node | augmentation: %Augmentation{height: left.augmentation.height + 1, bf: left.augmentation.height + 1}}
  end
  defp augment(%BST.Node{left: :leaf, right: right} = node) do
    %{node | augmentation: %Augmentation{height: right.augmentation.height + 1, bf: -1 * right.augmentation.height - 1}}
  end
  defp augment(%BST.Node{left: left, right: right} = node), do:
    %{node | augmentation: %Augmentation{height:  max(left.augmentation.height, right.augmentation.height) + 1,
                                         bf:      left.augmentation.height - right.augmentation.height}}
end