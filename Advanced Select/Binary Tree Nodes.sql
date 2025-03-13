select distinct node.N, case 
                when parent.P is null then 'Leaf'
                when Parent.P is not null and child.N is not null then 'Inner'
                else 'Root'
end
from BST node
left join BST parent on node.N=parent.P
left join BST child on node.P=child.N
order by node.N;
