şŚ
ú"Ü"
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype

ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:˙  ˙
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12
b'unknown'Çí
m
FEATURESPlaceholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
i
TARGETPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
shape:˙˙˙˙˙˙˙˙˙
*
dtype0
o
layer_1/truncated_normal/shapeConst*
valueB"     *
dtype0*
_output_shapes
:
b
layer_1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
layer_1/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
­
(layer_1/truncated_normal/TruncatedNormalTruncatedNormallayer_1/truncated_normal/shape*
T0*
dtype0* 
_output_shapes
:
*
seed2**
seed

layer_1/truncated_normal/mulMul(layer_1/truncated_normal/TruncatedNormallayer_1/truncated_normal/stddev* 
_output_shapes
:
*
T0

layer_1/truncated_normalAddlayer_1/truncated_normal/mullayer_1/truncated_normal/mean* 
_output_shapes
:
*
T0

	layer_1/W
VariableV2* 
_output_shapes
:
*
	container *
shape:
*
shared_name *
dtype0
ą
layer_1/W/AssignAssign	layer_1/Wlayer_1/truncated_normal*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:

n
layer_1/W/readIdentity	layer_1/W*
T0*
_class
loc:@layer_1/W* 
_output_shapes
:

\
layer_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
w
	layer_1/B
VariableV2*
_output_shapes	
:*
	container *
shape:*
shared_name *
dtype0
Ą
layer_1/B/AssignAssign	layer_1/Blayer_1/Const*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(
i
layer_1/B/readIdentity	layer_1/B*
_class
loc:@layer_1/B*
_output_shapes	
:*
T0

layer_1/MatMulMatMulFEATURESlayer_1/W/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
e
layer_1/addAddlayer_1/MatMullayer_1/B/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
layer_1/weight/tagConst*
valueB Blayer_1/weight*
dtype0*
_output_shapes
: 
g
layer_1/weightHistogramSummarylayer_1/weight/taglayer_1/W/read*
T0*
_output_shapes
: 
]
layer_1/bias/tagConst*
valueB Blayer_1/bias*
dtype0*
_output_shapes
: 
c
layer_1/biasHistogramSummarylayer_1/bias/taglayer_1/B/read*
T0*
_output_shapes
: 
T
layer_1/ReluRelulayer_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
W
dropout_layer/rateConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
_
dropout_layer/ShapeShapelayer_1/Relu*
T0*
out_type0*
_output_shapes
:
X
dropout_layer/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
dropout_layer/subSubdropout_layer/sub/xdropout_layer/rate*
_output_shapes
: *
T0
e
 dropout_layer/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 dropout_layer/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ş
*dropout_layer/random_uniform/RandomUniformRandomUniformdropout_layer/Shape*
seed*
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2

 dropout_layer/random_uniform/subSub dropout_layer/random_uniform/max dropout_layer/random_uniform/min*
T0*
_output_shapes
: 
¨
 dropout_layer/random_uniform/mulMul*dropout_layer/random_uniform/RandomUniform dropout_layer/random_uniform/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

dropout_layer/random_uniformAdd dropout_layer/random_uniform/mul dropout_layer/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
dropout_layer/addAdddropout_layer/subdropout_layer/random_uniform*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
b
dropout_layer/FloorFloordropout_layer/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
dropout_layer/truedivRealDivlayer_1/Reludropout_layer/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
w
dropout_layer/mulMuldropout_layer/truedivdropout_layer/Floor*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
o
layer_2/truncated_normal/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
b
layer_2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
d
layer_2/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *ÍĚĚ=*
dtype0
Ź
(layer_2/truncated_normal/TruncatedNormalTruncatedNormallayer_2/truncated_normal/shape*
T0*
dtype0*
_output_shapes
:	@*
seed2**
seed

layer_2/truncated_normal/mulMul(layer_2/truncated_normal/TruncatedNormallayer_2/truncated_normal/stddev*
_output_shapes
:	@*
T0

layer_2/truncated_normalAddlayer_2/truncated_normal/mullayer_2/truncated_normal/mean*
_output_shapes
:	@*
T0

	layer_2/W
VariableV2*
dtype0*
_output_shapes
:	@*
	container *
shape:	@*
shared_name 
°
layer_2/W/AssignAssign	layer_2/Wlayer_2/truncated_normal*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	@
m
layer_2/W/readIdentity	layer_2/W*
T0*
_class
loc:@layer_2/W*
_output_shapes
:	@
Z
layer_2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
u
	layer_2/B
VariableV2*
dtype0*
_output_shapes
:@*
	container *
shape:@*
shared_name 
 
layer_2/B/AssignAssign	layer_2/Blayer_2/Const*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
h
layer_2/B/readIdentity	layer_2/B*
T0*
_class
loc:@layer_2/B*
_output_shapes
:@

layer_2/MatMulMatMuldropout_layer/mullayer_2/W/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b( 
d
layer_2/addAddlayer_2/MatMullayer_2/B/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
a
layer_2/weight/tagConst*
_output_shapes
: *
valueB Blayer_2/weight*
dtype0
g
layer_2/weightHistogramSummarylayer_2/weight/taglayer_2/W/read*
_output_shapes
: *
T0
]
layer_2/bias/tagConst*
_output_shapes
: *
valueB Blayer_2/bias*
dtype0
c
layer_2/biasHistogramSummarylayer_2/bias/taglayer_2/B/read*
_output_shapes
: *
T0
S
layer_2/ReluRelulayer_2/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
k
out/truncated_normal/shapeConst*
_output_shapes
:*
valueB"@   
   *
dtype0
^
out/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
out/truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
Ł
$out/truncated_normal/TruncatedNormalTruncatedNormalout/truncated_normal/shape*
T0*
dtype0*
_output_shapes

:@
*
seed2**
seed

out/truncated_normal/mulMul$out/truncated_normal/TruncatedNormalout/truncated_normal/stddev*
T0*
_output_shapes

:@

y
out/truncated_normalAddout/truncated_normal/mulout/truncated_normal/mean*
T0*
_output_shapes

:@

y
out/W
VariableV2*
shared_name *
dtype0*
_output_shapes

:@
*
	container *
shape
:@


out/W/AssignAssignout/Wout/truncated_normal*
_output_shapes

:@
*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(
`

out/W/readIdentityout/W*
_class

loc:@out/W*
_output_shapes

:@
*
T0
V
	out/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

q
out/B
VariableV2*
shared_name *
dtype0*
_output_shapes
:
*
	container *
shape:


out/B/AssignAssignout/B	out/Const*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

\

out/B/readIdentityout/B*
_class

loc:@out/B*
_output_shapes
:
*
T0


out/MatMulMatMullayer_2/Relu
out/W/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( 
X
out/addAdd
out/MatMul
out/B/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Y
out/weight/tagConst*
valueB B
out/weight*
dtype0*
_output_shapes
: 
[

out/weightHistogramSummaryout/weight/tag
out/W/read*
_output_shapes
: *
T0
U
out/bias/tagConst*
valueB Bout/bias*
dtype0*
_output_shapes
: 
W
out/biasHistogramSummaryout/bias/tag
out/B/read*
T0*
_output_shapes
: 
Q
out/SoftmaxSoftmaxout/add*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

t
2losses_calc/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 
~
3losses_calc/softmax_cross_entropy_with_logits/ShapeShapeout/Softmax*
T0*
out_type0*
_output_shapes
:
v
4losses_calc/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 

5losses_calc/softmax_cross_entropy_with_logits/Shape_1Shapeout/Softmax*
_output_shapes
:*
T0*
out_type0
u
3losses_calc/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ä
1losses_calc/softmax_cross_entropy_with_logits/SubSub4losses_calc/softmax_cross_entropy_with_logits/Rank_13losses_calc/softmax_cross_entropy_with_logits/Sub/y*
T0*
_output_shapes
: 
Ž
9losses_calc/softmax_cross_entropy_with_logits/Slice/beginPack1losses_calc/softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:

8losses_calc/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0

3losses_calc/softmax_cross_entropy_with_logits/SliceSlice5losses_calc/softmax_cross_entropy_with_logits/Shape_19losses_calc/softmax_cross_entropy_with_logits/Slice/begin8losses_calc/softmax_cross_entropy_with_logits/Slice/size*
_output_shapes
:*
Index0*
T0

=losses_calc/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
{
9losses_calc/softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Š
4losses_calc/softmax_cross_entropy_with_logits/concatConcatV2=losses_calc/softmax_cross_entropy_with_logits/concat/values_03losses_calc/softmax_cross_entropy_with_logits/Slice9losses_calc/softmax_cross_entropy_with_logits/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
Ě
5losses_calc/softmax_cross_entropy_with_logits/ReshapeReshapeout/Softmax4losses_calc/softmax_cross_entropy_with_logits/concat*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
v
4losses_calc/softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
{
5losses_calc/softmax_cross_entropy_with_logits/Shape_2ShapeTARGET*
T0*
out_type0*
_output_shapes
:
w
5losses_calc/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Č
3losses_calc/softmax_cross_entropy_with_logits/Sub_1Sub4losses_calc/softmax_cross_entropy_with_logits/Rank_25losses_calc/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
˛
;losses_calc/softmax_cross_entropy_with_logits/Slice_1/beginPack3losses_calc/softmax_cross_entropy_with_logits/Sub_1*
T0*

axis *
N*
_output_shapes
:

:losses_calc/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
 
5losses_calc/softmax_cross_entropy_with_logits/Slice_1Slice5losses_calc/softmax_cross_entropy_with_logits/Shape_2;losses_calc/softmax_cross_entropy_with_logits/Slice_1/begin:losses_calc/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:

?losses_calc/softmax_cross_entropy_with_logits/concat_1/values_0Const*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
}
;losses_calc/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ą
6losses_calc/softmax_cross_entropy_with_logits/concat_1ConcatV2?losses_calc/softmax_cross_entropy_with_logits/concat_1/values_05losses_calc/softmax_cross_entropy_with_logits/Slice_1;losses_calc/softmax_cross_entropy_with_logits/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
Ë
7losses_calc/softmax_cross_entropy_with_logits/Reshape_1ReshapeTARGET6losses_calc/softmax_cross_entropy_with_logits/concat_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

-losses_calc/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits5losses_calc/softmax_cross_entropy_with_logits/Reshape7losses_calc/softmax_cross_entropy_with_logits/Reshape_1*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
w
5losses_calc/softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ć
3losses_calc/softmax_cross_entropy_with_logits/Sub_2Sub2losses_calc/softmax_cross_entropy_with_logits/Rank5losses_calc/softmax_cross_entropy_with_logits/Sub_2/y*
_output_shapes
: *
T0

;losses_calc/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
valueB: *
dtype0
ą
:losses_calc/softmax_cross_entropy_with_logits/Slice_2/sizePack3losses_calc/softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:

5losses_calc/softmax_cross_entropy_with_logits/Slice_2Slice3losses_calc/softmax_cross_entropy_with_logits/Shape;losses_calc/softmax_cross_entropy_with_logits/Slice_2/begin:losses_calc/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
ä
7losses_calc/softmax_cross_entropy_with_logits/Reshape_2Reshape-losses_calc/softmax_cross_entropy_with_logits5losses_calc/softmax_cross_entropy_with_logits/Slice_2*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
[
losses_calc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
˘
losses_calc/MeanMean7losses_calc/softmax_cross_entropy_with_logits/Reshape_2losses_calc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
\
Optimizer/gradients/ShapeConst*
_output_shapes
: *
valueB *
dtype0
b
Optimizer/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Optimizer/gradients/FillFillOptimizer/gradients/ShapeOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

7Optimizer/gradients/losses_calc/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Â
1Optimizer/gradients/losses_calc/Mean_grad/ReshapeReshapeOptimizer/gradients/Fill7Optimizer/gradients/losses_calc/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
Ś
/Optimizer/gradients/losses_calc/Mean_grad/ShapeShape7losses_calc/softmax_cross_entropy_with_logits/Reshape_2*
out_type0*
_output_shapes
:*
T0
Ú
.Optimizer/gradients/losses_calc/Mean_grad/TileTile1Optimizer/gradients/losses_calc/Mean_grad/Reshape/Optimizer/gradients/losses_calc/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
1Optimizer/gradients/losses_calc/Mean_grad/Shape_1Shape7losses_calc/softmax_cross_entropy_with_logits/Reshape_2*
out_type0*
_output_shapes
:*
T0
t
1Optimizer/gradients/losses_calc/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
y
/Optimizer/gradients/losses_calc/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ř
.Optimizer/gradients/losses_calc/Mean_grad/ProdProd1Optimizer/gradients/losses_calc/Mean_grad/Shape_1/Optimizer/gradients/losses_calc/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
{
1Optimizer/gradients/losses_calc/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ü
0Optimizer/gradients/losses_calc/Mean_grad/Prod_1Prod1Optimizer/gradients/losses_calc/Mean_grad/Shape_21Optimizer/gradients/losses_calc/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
u
3Optimizer/gradients/losses_calc/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ä
1Optimizer/gradients/losses_calc/Mean_grad/MaximumMaximum0Optimizer/gradients/losses_calc/Mean_grad/Prod_13Optimizer/gradients/losses_calc/Mean_grad/Maximum/y*
_output_shapes
: *
T0
Â
2Optimizer/gradients/losses_calc/Mean_grad/floordivFloorDiv.Optimizer/gradients/losses_calc/Mean_grad/Prod1Optimizer/gradients/losses_calc/Mean_grad/Maximum*
T0*
_output_shapes
: 
Ş
.Optimizer/gradients/losses_calc/Mean_grad/CastCast2Optimizer/gradients/losses_calc/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
Ę
1Optimizer/gradients/losses_calc/Mean_grad/truedivRealDiv.Optimizer/gradients/losses_calc/Mean_grad/Tile.Optimizer/gradients/losses_calc/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ă
VOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape-losses_calc/softmax_cross_entropy_with_logits*
T0*
out_type0*
_output_shapes
:
Ş
XOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape1Optimizer/gradients/losses_calc/Mean_grad/truedivVOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Optimizer/gradients/zeros_like	ZerosLike/losses_calc/softmax_cross_entropy_with_logits:1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
 
UOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Î
QOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsXOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeUOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

JOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mulMulQOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims/losses_calc/softmax_cross_entropy_with_logits:1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
Ń
QOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax5losses_calc/softmax_cross_entropy_with_logits/Reshape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
ß
JOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/NegNegQOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/LogSoftmax*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
˘
WOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ň
SOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsXOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeWOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
LOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mul_1MulSOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/ExpandDims_1JOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/Neg*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
ű
WOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOpK^Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mulM^Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mul_1
Ť
_Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentityJOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mulX^Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*]
_classS
QOloc:@Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ą
aOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1IdentityLOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mul_1X^Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*_
_classU
SQloc:@Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/mul_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

TOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapeout/Softmax*
out_type0*
_output_shapes
:*
T0
Ř
VOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshape_Optimizer/gradients/losses_calc/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyTOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
Ć
(Optimizer/gradients/out/Softmax_grad/mulMulVOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshapeout/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


:Optimizer/gradients/out/Softmax_grad/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ä
(Optimizer/gradients/out/Softmax_grad/SumSum(Optimizer/gradients/out/Softmax_grad/mul:Optimizer/gradients/out/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0*
T0
ă
(Optimizer/gradients/out/Softmax_grad/subSubVOptimizer/gradients/losses_calc/softmax_cross_entropy_with_logits/Reshape_grad/Reshape(Optimizer/gradients/out/Softmax_grad/Sum*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


*Optimizer/gradients/out/Softmax_grad/mul_1Mul(Optimizer/gradients/out/Softmax_grad/subout/Softmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

p
&Optimizer/gradients/out/add_grad/ShapeShape
out/MatMul*
T0*
out_type0*
_output_shapes
:
r
(Optimizer/gradients/out/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
Ţ
6Optimizer/gradients/out/add_grad/BroadcastGradientArgsBroadcastGradientArgs&Optimizer/gradients/out/add_grad/Shape(Optimizer/gradients/out/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ď
$Optimizer/gradients/out/add_grad/SumSum*Optimizer/gradients/out/Softmax_grad/mul_16Optimizer/gradients/out/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Á
(Optimizer/gradients/out/add_grad/ReshapeReshape$Optimizer/gradients/out/add_grad/Sum&Optimizer/gradients/out/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ó
&Optimizer/gradients/out/add_grad/Sum_1Sum*Optimizer/gradients/out/Softmax_grad/mul_18Optimizer/gradients/out/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ş
*Optimizer/gradients/out/add_grad/Reshape_1Reshape&Optimizer/gradients/out/add_grad/Sum_1(Optimizer/gradients/out/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:


1Optimizer/gradients/out/add_grad/tuple/group_depsNoOp)^Optimizer/gradients/out/add_grad/Reshape+^Optimizer/gradients/out/add_grad/Reshape_1

9Optimizer/gradients/out/add_grad/tuple/control_dependencyIdentity(Optimizer/gradients/out/add_grad/Reshape2^Optimizer/gradients/out/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@Optimizer/gradients/out/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


;Optimizer/gradients/out/add_grad/tuple/control_dependency_1Identity*Optimizer/gradients/out/add_grad/Reshape_12^Optimizer/gradients/out/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/out/add_grad/Reshape_1*
_output_shapes
:

Ó
*Optimizer/gradients/out/MatMul_grad/MatMulMatMul9Optimizer/gradients/out/add_grad/tuple/control_dependency
out/W/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
transpose_a( *
transpose_b(
Î
,Optimizer/gradients/out/MatMul_grad/MatMul_1MatMullayer_2/Relu9Optimizer/gradients/out/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:@
*
transpose_a(

4Optimizer/gradients/out/MatMul_grad/tuple/group_depsNoOp+^Optimizer/gradients/out/MatMul_grad/MatMul-^Optimizer/gradients/out/MatMul_grad/MatMul_1

<Optimizer/gradients/out/MatMul_grad/tuple/control_dependencyIdentity*Optimizer/gradients/out/MatMul_grad/MatMul5^Optimizer/gradients/out/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@Optimizer/gradients/out/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

>Optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1Identity,Optimizer/gradients/out/MatMul_grad/MatMul_15^Optimizer/gradients/out/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/out/MatMul_grad/MatMul_1*
_output_shapes

:@

¸
.Optimizer/gradients/layer_2/Relu_grad/ReluGradReluGrad<Optimizer/gradients/out/MatMul_grad/tuple/control_dependencylayer_2/Relu*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
x
*Optimizer/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
T0*
out_type0*
_output_shapes
:
v
,Optimizer/gradients/layer_2/add_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
ę
:Optimizer/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs*Optimizer/gradients/layer_2/add_grad/Shape,Optimizer/gradients/layer_2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ű
(Optimizer/gradients/layer_2/add_grad/SumSum.Optimizer/gradients/layer_2/Relu_grad/ReluGrad:Optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Í
,Optimizer/gradients/layer_2/add_grad/ReshapeReshape(Optimizer/gradients/layer_2/add_grad/Sum*Optimizer/gradients/layer_2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ß
*Optimizer/gradients/layer_2/add_grad/Sum_1Sum.Optimizer/gradients/layer_2/Relu_grad/ReluGrad<Optimizer/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ć
.Optimizer/gradients/layer_2/add_grad/Reshape_1Reshape*Optimizer/gradients/layer_2/add_grad/Sum_1,Optimizer/gradients/layer_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:@

5Optimizer/gradients/layer_2/add_grad/tuple/group_depsNoOp-^Optimizer/gradients/layer_2/add_grad/Reshape/^Optimizer/gradients/layer_2/add_grad/Reshape_1
˘
=Optimizer/gradients/layer_2/add_grad/tuple/control_dependencyIdentity,Optimizer/gradients/layer_2/add_grad/Reshape6^Optimizer/gradients/layer_2/add_grad/tuple/group_deps*
T0*?
_class5
31loc:@Optimizer/gradients/layer_2/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@

?Optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1Identity.Optimizer/gradients/layer_2/add_grad/Reshape_16^Optimizer/gradients/layer_2/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@Optimizer/gradients/layer_2/add_grad/Reshape_1*
_output_shapes
:@
ŕ
.Optimizer/gradients/layer_2/MatMul_grad/MatMulMatMul=Optimizer/gradients/layer_2/add_grad/tuple/control_dependencylayer_2/W/read*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
Ü
0Optimizer/gradients/layer_2/MatMul_grad/MatMul_1MatMuldropout_layer/mul=Optimizer/gradients/layer_2/add_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	@*
transpose_a(
¤
8Optimizer/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp/^Optimizer/gradients/layer_2/MatMul_grad/MatMul1^Optimizer/gradients/layer_2/MatMul_grad/MatMul_1
­
@Optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity.Optimizer/gradients/layer_2/MatMul_grad/MatMul9^Optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@Optimizer/gradients/layer_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ş
BOptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity0Optimizer/gradients/layer_2/MatMul_grad/MatMul_19^Optimizer/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Optimizer/gradients/layer_2/MatMul_grad/MatMul_1*
_output_shapes
:	@

0Optimizer/gradients/dropout_layer/mul_grad/ShapeShapedropout_layer/truediv*
_output_shapes
:*
T0*
out_type0

2Optimizer/gradients/dropout_layer/mul_grad/Shape_1Shapedropout_layer/Floor*
_output_shapes
:*
T0*
out_type0
ü
@Optimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgsBroadcastGradientArgs0Optimizer/gradients/dropout_layer/mul_grad/Shape2Optimizer/gradients/dropout_layer/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ż
.Optimizer/gradients/dropout_layer/mul_grad/MulMul@Optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependencydropout_layer/Floor*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ç
.Optimizer/gradients/dropout_layer/mul_grad/SumSum.Optimizer/gradients/dropout_layer/mul_grad/Mul@Optimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ŕ
2Optimizer/gradients/dropout_layer/mul_grad/ReshapeReshape.Optimizer/gradients/dropout_layer/mul_grad/Sum0Optimizer/gradients/dropout_layer/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
0Optimizer/gradients/dropout_layer/mul_grad/Mul_1Muldropout_layer/truediv@Optimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
í
0Optimizer/gradients/dropout_layer/mul_grad/Sum_1Sum0Optimizer/gradients/dropout_layer/mul_grad/Mul_1BOptimizer/gradients/dropout_layer/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ć
4Optimizer/gradients/dropout_layer/mul_grad/Reshape_1Reshape0Optimizer/gradients/dropout_layer/mul_grad/Sum_12Optimizer/gradients/dropout_layer/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
;Optimizer/gradients/dropout_layer/mul_grad/tuple/group_depsNoOp3^Optimizer/gradients/dropout_layer/mul_grad/Reshape5^Optimizer/gradients/dropout_layer/mul_grad/Reshape_1
ť
COptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependencyIdentity2Optimizer/gradients/dropout_layer/mul_grad/Reshape<^Optimizer/gradients/dropout_layer/mul_grad/tuple/group_deps*E
_class;
97loc:@Optimizer/gradients/dropout_layer/mul_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Á
EOptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependency_1Identity4Optimizer/gradients/dropout_layer/mul_grad/Reshape_1<^Optimizer/gradients/dropout_layer/mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@Optimizer/gradients/dropout_layer/mul_grad/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

4Optimizer/gradients/dropout_layer/truediv_grad/ShapeShapelayer_1/Relu*
T0*
out_type0*
_output_shapes
:
y
6Optimizer/gradients/dropout_layer/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 

DOptimizer/gradients/dropout_layer/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs4Optimizer/gradients/dropout_layer/truediv_grad/Shape6Optimizer/gradients/dropout_layer/truediv_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ě
6Optimizer/gradients/dropout_layer/truediv_grad/RealDivRealDivCOptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependencydropout_layer/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
÷
2Optimizer/gradients/dropout_layer/truediv_grad/SumSum6Optimizer/gradients/dropout_layer/truediv_grad/RealDivDOptimizer/gradients/dropout_layer/truediv_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ě
6Optimizer/gradients/dropout_layer/truediv_grad/ReshapeReshape2Optimizer/gradients/dropout_layer/truediv_grad/Sum4Optimizer/gradients/dropout_layer/truediv_grad/Shape*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
z
2Optimizer/gradients/dropout_layer/truediv_grad/NegNeglayer_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
˝
8Optimizer/gradients/dropout_layer/truediv_grad/RealDiv_1RealDiv2Optimizer/gradients/dropout_layer/truediv_grad/Negdropout_layer/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
8Optimizer/gradients/dropout_layer/truediv_grad/RealDiv_2RealDiv8Optimizer/gradients/dropout_layer/truediv_grad/RealDiv_1dropout_layer/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ë
2Optimizer/gradients/dropout_layer/truediv_grad/mulMulCOptimizer/gradients/dropout_layer/mul_grad/tuple/control_dependency8Optimizer/gradients/dropout_layer/truediv_grad/RealDiv_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
÷
4Optimizer/gradients/dropout_layer/truediv_grad/Sum_1Sum2Optimizer/gradients/dropout_layer/truediv_grad/mulFOptimizer/gradients/dropout_layer/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ŕ
8Optimizer/gradients/dropout_layer/truediv_grad/Reshape_1Reshape4Optimizer/gradients/dropout_layer/truediv_grad/Sum_16Optimizer/gradients/dropout_layer/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ť
?Optimizer/gradients/dropout_layer/truediv_grad/tuple/group_depsNoOp7^Optimizer/gradients/dropout_layer/truediv_grad/Reshape9^Optimizer/gradients/dropout_layer/truediv_grad/Reshape_1
Ë
GOptimizer/gradients/dropout_layer/truediv_grad/tuple/control_dependencyIdentity6Optimizer/gradients/dropout_layer/truediv_grad/Reshape@^Optimizer/gradients/dropout_layer/truediv_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*I
_class?
=;loc:@Optimizer/gradients/dropout_layer/truediv_grad/Reshape
ż
IOptimizer/gradients/dropout_layer/truediv_grad/tuple/control_dependency_1Identity8Optimizer/gradients/dropout_layer/truediv_grad/Reshape_1@^Optimizer/gradients/dropout_layer/truediv_grad/tuple/group_deps*
T0*K
_classA
?=loc:@Optimizer/gradients/dropout_layer/truediv_grad/Reshape_1*
_output_shapes
: 
Ä
.Optimizer/gradients/layer_1/Relu_grad/ReluGradReluGradGOptimizer/gradients/dropout_layer/truediv_grad/tuple/control_dependencylayer_1/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
x
*Optimizer/gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
out_type0*
_output_shapes
:*
T0
w
,Optimizer/gradients/layer_1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ę
:Optimizer/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs*Optimizer/gradients/layer_1/add_grad/Shape,Optimizer/gradients/layer_1/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ű
(Optimizer/gradients/layer_1/add_grad/SumSum.Optimizer/gradients/layer_1/Relu_grad/ReluGrad:Optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Î
,Optimizer/gradients/layer_1/add_grad/ReshapeReshape(Optimizer/gradients/layer_1/add_grad/Sum*Optimizer/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
*Optimizer/gradients/layer_1/add_grad/Sum_1Sum.Optimizer/gradients/layer_1/Relu_grad/ReluGrad<Optimizer/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ç
.Optimizer/gradients/layer_1/add_grad/Reshape_1Reshape*Optimizer/gradients/layer_1/add_grad/Sum_1,Optimizer/gradients/layer_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

5Optimizer/gradients/layer_1/add_grad/tuple/group_depsNoOp-^Optimizer/gradients/layer_1/add_grad/Reshape/^Optimizer/gradients/layer_1/add_grad/Reshape_1
Ł
=Optimizer/gradients/layer_1/add_grad/tuple/control_dependencyIdentity,Optimizer/gradients/layer_1/add_grad/Reshape6^Optimizer/gradients/layer_1/add_grad/tuple/group_deps*?
_class5
31loc:@Optimizer/gradients/layer_1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

?Optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1Identity.Optimizer/gradients/layer_1/add_grad/Reshape_16^Optimizer/gradients/layer_1/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@Optimizer/gradients/layer_1/add_grad/Reshape_1*
_output_shapes	
:
ŕ
.Optimizer/gradients/layer_1/MatMul_grad/MatMulMatMul=Optimizer/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/W/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
Ô
0Optimizer/gradients/layer_1/MatMul_grad/MatMul_1MatMulFEATURES=Optimizer/gradients/layer_1/add_grad/tuple/control_dependency*
T0* 
_output_shapes
:
*
transpose_a(*
transpose_b( 
¤
8Optimizer/gradients/layer_1/MatMul_grad/tuple/group_depsNoOp/^Optimizer/gradients/layer_1/MatMul_grad/MatMul1^Optimizer/gradients/layer_1/MatMul_grad/MatMul_1
­
@Optimizer/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity.Optimizer/gradients/layer_1/MatMul_grad/MatMul9^Optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@Optimizer/gradients/layer_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
BOptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity0Optimizer/gradients/layer_1/MatMul_grad/MatMul_19^Optimizer/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@Optimizer/gradients/layer_1/MatMul_grad/MatMul_1* 
_output_shapes
:


#Optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@layer_1/B*
dtype0*
_output_shapes
: 

Optimizer/beta1_power
VariableV2*
_class
loc:@layer_1/B*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ę
Optimizer/beta1_power/AssignAssignOptimizer/beta1_power#Optimizer/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
|
Optimizer/beta1_power/readIdentityOptimizer/beta1_power*
_class
loc:@layer_1/B*
_output_shapes
: *
T0

#Optimizer/beta2_power/initial_valueConst*
valueB
 *wž?*
_class
loc:@layer_1/B*
dtype0*
_output_shapes
: 

Optimizer/beta2_power
VariableV2*
shared_name *
_class
loc:@layer_1/B*
	container *
shape: *
dtype0*
_output_shapes
: 
Ę
Optimizer/beta2_power/AssignAssignOptimizer/beta2_power#Optimizer/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
|
Optimizer/beta2_power/readIdentityOptimizer/beta2_power*
_class
loc:@layer_1/B*
_output_shapes
: *
T0

0layer_1/W/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@layer_1/W*
valueB"     *
dtype0*
_output_shapes
:

&layer_1/W/Adam/Initializer/zeros/ConstConst*
_class
loc:@layer_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ý
 layer_1/W/Adam/Initializer/zerosFill0layer_1/W/Adam/Initializer/zeros/shape_as_tensor&layer_1/W/Adam/Initializer/zeros/Const*
_class
loc:@layer_1/W*

index_type0* 
_output_shapes
:
*
T0
¤
layer_1/W/Adam
VariableV2*
shared_name *
_class
loc:@layer_1/W*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ă
layer_1/W/Adam/AssignAssignlayer_1/W/Adam layer_1/W/Adam/Initializer/zeros*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
x
layer_1/W/Adam/readIdentitylayer_1/W/Adam*
T0*
_class
loc:@layer_1/W* 
_output_shapes
:

Ą
2layer_1/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@layer_1/W*
valueB"     *
dtype0*
_output_shapes
:

(layer_1/W/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@layer_1/W*
valueB
 *    *
dtype0*
_output_shapes
: 
ă
"layer_1/W/Adam_1/Initializer/zerosFill2layer_1/W/Adam_1/Initializer/zeros/shape_as_tensor(layer_1/W/Adam_1/Initializer/zeros/Const*
_class
loc:@layer_1/W*

index_type0* 
_output_shapes
:
*
T0
Ś
layer_1/W/Adam_1
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *
_class
loc:@layer_1/W*
	container 
É
layer_1/W/Adam_1/AssignAssignlayer_1/W/Adam_1"layer_1/W/Adam_1/Initializer/zeros*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
|
layer_1/W/Adam_1/readIdentitylayer_1/W/Adam_1*
_class
loc:@layer_1/W* 
_output_shapes
:
*
T0

 layer_1/B/Adam/Initializer/zerosConst*
_class
loc:@layer_1/B*
valueB*    *
dtype0*
_output_shapes	
:

layer_1/B/Adam
VariableV2*
shared_name *
_class
loc:@layer_1/B*
	container *
shape:*
dtype0*
_output_shapes	
:
ž
layer_1/B/Adam/AssignAssignlayer_1/B/Adam layer_1/B/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:
s
layer_1/B/Adam/readIdentitylayer_1/B/Adam*
T0*
_class
loc:@layer_1/B*
_output_shapes	
:

"layer_1/B/Adam_1/Initializer/zerosConst*
_class
loc:@layer_1/B*
valueB*    *
dtype0*
_output_shapes	
:

layer_1/B/Adam_1
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
_class
loc:@layer_1/B*
	container *
shape:
Ä
layer_1/B/Adam_1/AssignAssignlayer_1/B/Adam_1"layer_1/B/Adam_1/Initializer/zeros*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
w
layer_1/B/Adam_1/readIdentitylayer_1/B/Adam_1*
_class
loc:@layer_1/B*
_output_shapes	
:*
T0

0layer_2/W/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@layer_2/W*
valueB"   @   *
dtype0*
_output_shapes
:

&layer_2/W/Adam/Initializer/zeros/ConstConst*
_class
loc:@layer_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
Ü
 layer_2/W/Adam/Initializer/zerosFill0layer_2/W/Adam/Initializer/zeros/shape_as_tensor&layer_2/W/Adam/Initializer/zeros/Const*
T0*
_class
loc:@layer_2/W*

index_type0*
_output_shapes
:	@
˘
layer_2/W/Adam
VariableV2*
shared_name *
_class
loc:@layer_2/W*
	container *
shape:	@*
dtype0*
_output_shapes
:	@
Â
layer_2/W/Adam/AssignAssignlayer_2/W/Adam layer_2/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	@
w
layer_2/W/Adam/readIdentitylayer_2/W/Adam*
_class
loc:@layer_2/W*
_output_shapes
:	@*
T0
Ą
2layer_2/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@layer_2/W*
valueB"   @   *
dtype0*
_output_shapes
:

(layer_2/W/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@layer_2/W*
valueB
 *    *
dtype0*
_output_shapes
: 
â
"layer_2/W/Adam_1/Initializer/zerosFill2layer_2/W/Adam_1/Initializer/zeros/shape_as_tensor(layer_2/W/Adam_1/Initializer/zeros/Const*
_class
loc:@layer_2/W*

index_type0*
_output_shapes
:	@*
T0
¤
layer_2/W/Adam_1
VariableV2*
dtype0*
_output_shapes
:	@*
shared_name *
_class
loc:@layer_2/W*
	container *
shape:	@
Č
layer_2/W/Adam_1/AssignAssignlayer_2/W/Adam_1"layer_2/W/Adam_1/Initializer/zeros*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	@*
use_locking(*
T0
{
layer_2/W/Adam_1/readIdentitylayer_2/W/Adam_1*
_class
loc:@layer_2/W*
_output_shapes
:	@*
T0

 layer_2/B/Adam/Initializer/zerosConst*
_class
loc:@layer_2/B*
valueB@*    *
dtype0*
_output_shapes
:@

layer_2/B/Adam
VariableV2*
shared_name *
_class
loc:@layer_2/B*
	container *
shape:@*
dtype0*
_output_shapes
:@
˝
layer_2/B/Adam/AssignAssignlayer_2/B/Adam layer_2/B/Adam/Initializer/zeros*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
r
layer_2/B/Adam/readIdentitylayer_2/B/Adam*
T0*
_class
loc:@layer_2/B*
_output_shapes
:@

"layer_2/B/Adam_1/Initializer/zerosConst*
_class
loc:@layer_2/B*
valueB@*    *
dtype0*
_output_shapes
:@

layer_2/B/Adam_1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@layer_2/B*
	container 
Ă
layer_2/B/Adam_1/AssignAssignlayer_2/B/Adam_1"layer_2/B/Adam_1/Initializer/zeros*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
v
layer_2/B/Adam_1/readIdentitylayer_2/B/Adam_1*
T0*
_class
loc:@layer_2/B*
_output_shapes
:@

out/W/Adam/Initializer/zerosConst*
_class

loc:@out/W*
valueB@
*    *
dtype0*
_output_shapes

:@



out/W/Adam
VariableV2*
shared_name *
_class

loc:@out/W*
	container *
shape
:@
*
dtype0*
_output_shapes

:@

ą
out/W/Adam/AssignAssign
out/W/Adamout/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

j
out/W/Adam/readIdentity
out/W/Adam*
T0*
_class

loc:@out/W*
_output_shapes

:@


out/W/Adam_1/Initializer/zerosConst*
_class

loc:@out/W*
valueB@
*    *
dtype0*
_output_shapes

:@


out/W/Adam_1
VariableV2*
shape
:@
*
dtype0*
_output_shapes

:@
*
shared_name *
_class

loc:@out/W*
	container 
ˇ
out/W/Adam_1/AssignAssignout/W/Adam_1out/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

n
out/W/Adam_1/readIdentityout/W/Adam_1*
_class

loc:@out/W*
_output_shapes

:@
*
T0

out/B/Adam/Initializer/zerosConst*
_class

loc:@out/B*
valueB
*    *
dtype0*
_output_shapes
:



out/B/Adam
VariableV2*
shared_name *
_class

loc:@out/B*
	container *
shape:
*
dtype0*
_output_shapes
:

­
out/B/Adam/AssignAssign
out/B/Adamout/B/Adam/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

f
out/B/Adam/readIdentity
out/B/Adam*
_class

loc:@out/B*
_output_shapes
:
*
T0

out/B/Adam_1/Initializer/zerosConst*
_class

loc:@out/B*
valueB
*    *
dtype0*
_output_shapes
:


out/B/Adam_1
VariableV2*
shared_name *
_class

loc:@out/B*
	container *
shape:
*
dtype0*
_output_shapes
:

ł
out/B/Adam_1/AssignAssignout/B/Adam_1out/B/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:

j
out/B/Adam_1/readIdentityout/B/Adam_1*
_class

loc:@out/B*
_output_shapes
:
*
T0
a
Optimizer/Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Y
Optimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Y
Optimizer/Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
[
Optimizer/Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
ą
)Optimizer/Adam/update_layer_1/W/ApplyAdam	ApplyAdam	layer_1/Wlayer_1/W/Adamlayer_1/W/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonBOptimizer/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@layer_1/W*
use_nesterov( * 
_output_shapes
:

Š
)Optimizer/Adam/update_layer_1/B/ApplyAdam	ApplyAdam	layer_1/Blayer_1/B/Adamlayer_1/B/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon?Optimizer/gradients/layer_1/add_grad/tuple/control_dependency_1*
_class
loc:@layer_1/B*
use_nesterov( *
_output_shapes	
:*
use_locking( *
T0
°
)Optimizer/Adam/update_layer_2/W/ApplyAdam	ApplyAdam	layer_2/Wlayer_2/W/Adamlayer_2/W/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilonBOptimizer/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
_class
loc:@layer_2/W*
use_nesterov( *
_output_shapes
:	@*
use_locking( *
T0
¨
)Optimizer/Adam/update_layer_2/B/ApplyAdam	ApplyAdam	layer_2/Blayer_2/B/Adamlayer_2/B/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon?Optimizer/gradients/layer_2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@layer_2/B*
use_nesterov( *
_output_shapes
:@

%Optimizer/Adam/update_out/W/ApplyAdam	ApplyAdamout/W
out/W/Adamout/W/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon>Optimizer/gradients/out/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@out/W*
use_nesterov( *
_output_shapes

:@


%Optimizer/Adam/update_out/B/ApplyAdam	ApplyAdamout/B
out/B/Adamout/B/Adam_1Optimizer/beta1_power/readOptimizer/beta2_power/readOptimizer/Adam/learning_rateOptimizer/Adam/beta1Optimizer/Adam/beta2Optimizer/Adam/epsilon;Optimizer/gradients/out/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@out/B*
use_nesterov( *
_output_shapes
:


Optimizer/Adam/mulMulOptimizer/beta1_power/readOptimizer/Adam/beta1*^Optimizer/Adam/update_layer_1/B/ApplyAdam*^Optimizer/Adam/update_layer_1/W/ApplyAdam*^Optimizer/Adam/update_layer_2/B/ApplyAdam*^Optimizer/Adam/update_layer_2/W/ApplyAdam&^Optimizer/Adam/update_out/B/ApplyAdam&^Optimizer/Adam/update_out/W/ApplyAdam*
_class
loc:@layer_1/B*
_output_shapes
: *
T0
˛
Optimizer/Adam/AssignAssignOptimizer/beta1_powerOptimizer/Adam/mul*
use_locking( *
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 

Optimizer/Adam/mul_1MulOptimizer/beta2_power/readOptimizer/Adam/beta2*^Optimizer/Adam/update_layer_1/B/ApplyAdam*^Optimizer/Adam/update_layer_1/W/ApplyAdam*^Optimizer/Adam/update_layer_2/B/ApplyAdam*^Optimizer/Adam/update_layer_2/W/ApplyAdam&^Optimizer/Adam/update_out/B/ApplyAdam&^Optimizer/Adam/update_out/W/ApplyAdam*
_class
loc:@layer_1/B*
_output_shapes
: *
T0
ś
Optimizer/Adam/Assign_1AssignOptimizer/beta2_powerOptimizer/Adam/mul_1*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
Č
Optimizer/AdamNoOp^Optimizer/Adam/Assign^Optimizer/Adam/Assign_1*^Optimizer/Adam/update_layer_1/B/ApplyAdam*^Optimizer/Adam/update_layer_1/W/ApplyAdam*^Optimizer/Adam/update_layer_2/B/ApplyAdam*^Optimizer/Adam/update_layer_2/W/ApplyAdam&^Optimizer/Adam/update_out/B/ApplyAdam&^Optimizer/Adam/update_out/W/ApplyAdam
d
"Accuracy_calc/prediction/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
 
Accuracy_calc/predictionArgMaxout/Softmax"Accuracy_calc/prediction/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
Accuracy_calc/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

Accuracy_calc/ArgMaxArgMaxTARGETAccuracy_calc/ArgMax/dimension*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
z
Accuracy_calc/EqualEqualAccuracy_calc/predictionAccuracy_calc/ArgMax*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
|
Accuracy_calc/CastCastAccuracy_calc/Equal*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

]
Accuracy_calc/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Accuracy_calc/MeanMeanAccuracy_calc/CastAccuracy_calc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
l
Perfomance/accuracy/tagsConst*$
valueB BPerfomance/accuracy*
dtype0*
_output_shapes
: 
s
Perfomance/accuracyScalarSummaryPerfomance/accuracy/tagsAccuracy_calc/Mean*
T0*
_output_shapes
: 
d
Perfomance/cost/tagsConst* 
valueB BPerfomance/cost*
dtype0*
_output_shapes
: 
i
Perfomance/costScalarSummaryPerfomance/cost/tagslosses_calc/Mean*
T0*
_output_shapes
: 
q
show_image/Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:

show_image/ReshapeReshapeFEATURESshow_image/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
show_image/input_image/tagConst*'
valueB Bshow_image/input_image*
dtype0*
_output_shapes
: 
Ş
show_image/input_imageImageSummaryshow_image/input_image/tagshow_image/Reshape*
	bad_colorB:˙  ˙*
_output_shapes
: *

max_images*
T0
Ó
Merge/MergeSummaryMergeSummarylayer_1/weightlayer_1/biaslayer_2/weightlayer_2/bias
out/weightout/biasPerfomance/accuracyPerfomance/costshow_image/input_image*
N	*
_output_shapes
: 
Đ
initNoOp^Optimizer/beta1_power/Assign^Optimizer/beta2_power/Assign^layer_1/B/Adam/Assign^layer_1/B/Adam_1/Assign^layer_1/B/Assign^layer_1/W/Adam/Assign^layer_1/W/Adam_1/Assign^layer_1/W/Assign^layer_2/B/Adam/Assign^layer_2/B/Adam_1/Assign^layer_2/B/Assign^layer_2/W/Adam/Assign^layer_2/W/Adam_1/Assign^layer_2/W/Assign^out/B/Adam/Assign^out/B/Adam_1/Assign^out/B/Assign^out/W/Adam/Assign^out/W/Adam_1/Assign^out/W/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_03db074932bc4b1abd50e3541897f815/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*š
valueŻBŹBOptimizer/beta1_powerBOptimizer/beta2_powerB	layer_1/BBlayer_1/B/AdamBlayer_1/B/Adam_1B	layer_1/WBlayer_1/W/AdamBlayer_1/W/Adam_1B	layer_2/BBlayer_2/B/AdamBlayer_2/B/Adam_1B	layer_2/WBlayer_2/W/AdamBlayer_2/W/Adam_1Bout/BB
out/B/AdamBout/B/Adam_1Bout/WB
out/W/AdamBout/W/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ť
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesOptimizer/beta1_powerOptimizer/beta2_power	layer_1/Blayer_1/B/Adamlayer_1/B/Adam_1	layer_1/Wlayer_1/W/Adamlayer_1/W/Adam_1	layer_2/Blayer_2/B/Adamlayer_2/B/Adam_1	layer_2/Wlayer_2/W/Adamlayer_2/W/Adam_1out/B
out/B/Adamout/B/Adam_1out/W
out/W/Adamout/W/Adam_1*"
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst*š
valueŻBŹBOptimizer/beta1_powerBOptimizer/beta2_powerB	layer_1/BBlayer_1/B/AdamBlayer_1/B/Adam_1B	layer_1/WBlayer_1/W/AdamBlayer_1/W/Adam_1B	layer_2/BBlayer_2/B/AdamBlayer_2/B/Adam_1B	layer_2/WBlayer_2/W/AdamBlayer_2/W/Adam_1Bout/BB
out/B/AdamBout/B/Adam_1Bout/WB
out/W/AdamBout/W/Adam_1*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ď
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2
¤
save/AssignAssignOptimizer/beta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
¨
save/Assign_1AssignOptimizer/beta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes
: 
Ą
save/Assign_2Assign	layer_1/Bsave/RestoreV2:2*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Ś
save/Assign_3Assignlayer_1/B/Adamsave/RestoreV2:3*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
¨
save/Assign_4Assignlayer_1/B/Adam_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@layer_1/B*
validate_shape(*
_output_shapes	
:
Ś
save/Assign_5Assign	layer_1/Wsave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:

Ť
save/Assign_6Assignlayer_1/W/Adamsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:

­
save/Assign_7Assignlayer_1/W/Adam_1save/RestoreV2:7*
use_locking(*
T0*
_class
loc:@layer_1/W*
validate_shape(* 
_output_shapes
:

 
save/Assign_8Assign	layer_2/Bsave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
Ľ
save/Assign_9Assignlayer_2/B/Adamsave/RestoreV2:9*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Š
save/Assign_10Assignlayer_2/B/Adam_1save/RestoreV2:10*
use_locking(*
T0*
_class
loc:@layer_2/B*
validate_shape(*
_output_shapes
:@
§
save/Assign_11Assign	layer_2/Wsave/RestoreV2:11*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	@
Ź
save/Assign_12Assignlayer_2/W/Adamsave/RestoreV2:12*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	@*
use_locking(
Ž
save/Assign_13Assignlayer_2/W/Adam_1save/RestoreV2:13*
use_locking(*
T0*
_class
loc:@layer_2/W*
validate_shape(*
_output_shapes
:	@

save/Assign_14Assignout/Bsave/RestoreV2:14*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:


save/Assign_15Assign
out/B/Adamsave/RestoreV2:15*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:
*
use_locking(
Ą
save/Assign_16Assignout/B/Adam_1save/RestoreV2:16*
use_locking(*
T0*
_class

loc:@out/B*
validate_shape(*
_output_shapes
:


save/Assign_17Assignout/Wsave/RestoreV2:17*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

Ł
save/Assign_18Assign
out/W/Adamsave/RestoreV2:18*
use_locking(*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@

Ľ
save/Assign_19Assignout/W/Adam_1save/RestoreV2:19*
T0*
_class

loc:@out/W*
validate_shape(*
_output_shapes

:@
*
use_locking(
â
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ŕ
trainable_variables¨Ľ
O
layer_1/W:0layer_1/W/Assignlayer_1/W/read:02layer_1/truncated_normal:08
D
layer_1/B:0layer_1/B/Assignlayer_1/B/read:02layer_1/Const:08
O
layer_2/W:0layer_2/W/Assignlayer_2/W/read:02layer_2/truncated_normal:08
D
layer_2/B:0layer_2/B/Assignlayer_2/B/read:02layer_2/Const:08
?
out/W:0out/W/Assignout/W/read:02out/truncated_normal:08
4
out/B:0out/B/Assignout/B/read:02out/Const:08"ł
	summariesĽ
˘
layer_1/weight:0
layer_1/bias:0
layer_2/weight:0
layer_2/bias:0
out/weight:0

out/bias:0
Perfomance/accuracy:0
Perfomance/cost:0
show_image/input_image:0"
train_op

Optimizer/Adam"ę
	variablesÜŮ
O
layer_1/W:0layer_1/W/Assignlayer_1/W/read:02layer_1/truncated_normal:08
D
layer_1/B:0layer_1/B/Assignlayer_1/B/read:02layer_1/Const:08
O
layer_2/W:0layer_2/W/Assignlayer_2/W/read:02layer_2/truncated_normal:08
D
layer_2/B:0layer_2/B/Assignlayer_2/B/read:02layer_2/Const:08
?
out/W:0out/W/Assignout/W/read:02out/truncated_normal:08
4
out/B:0out/B/Assignout/B/read:02out/Const:08
|
Optimizer/beta1_power:0Optimizer/beta1_power/AssignOptimizer/beta1_power/read:02%Optimizer/beta1_power/initial_value:0
|
Optimizer/beta2_power:0Optimizer/beta2_power/AssignOptimizer/beta2_power/read:02%Optimizer/beta2_power/initial_value:0
d
layer_1/W/Adam:0layer_1/W/Adam/Assignlayer_1/W/Adam/read:02"layer_1/W/Adam/Initializer/zeros:0
l
layer_1/W/Adam_1:0layer_1/W/Adam_1/Assignlayer_1/W/Adam_1/read:02$layer_1/W/Adam_1/Initializer/zeros:0
d
layer_1/B/Adam:0layer_1/B/Adam/Assignlayer_1/B/Adam/read:02"layer_1/B/Adam/Initializer/zeros:0
l
layer_1/B/Adam_1:0layer_1/B/Adam_1/Assignlayer_1/B/Adam_1/read:02$layer_1/B/Adam_1/Initializer/zeros:0
d
layer_2/W/Adam:0layer_2/W/Adam/Assignlayer_2/W/Adam/read:02"layer_2/W/Adam/Initializer/zeros:0
l
layer_2/W/Adam_1:0layer_2/W/Adam_1/Assignlayer_2/W/Adam_1/read:02$layer_2/W/Adam_1/Initializer/zeros:0
d
layer_2/B/Adam:0layer_2/B/Adam/Assignlayer_2/B/Adam/read:02"layer_2/B/Adam/Initializer/zeros:0
l
layer_2/B/Adam_1:0layer_2/B/Adam_1/Assignlayer_2/B/Adam_1/read:02$layer_2/B/Adam_1/Initializer/zeros:0
T
out/W/Adam:0out/W/Adam/Assignout/W/Adam/read:02out/W/Adam/Initializer/zeros:0
\
out/W/Adam_1:0out/W/Adam_1/Assignout/W/Adam_1/read:02 out/W/Adam_1/Initializer/zeros:0
T
out/B/Adam:0out/B/Adam/Assignout/B/Adam/read:02out/B/Adam/Initializer/zeros:0
\
out/B/Adam_1:0out/B/Adam_1/Assignout/B/Adam_1/read:02 out/B/Adam_1/Initializer/zeros:0*Ť
serving_default
.
FEATURES"

FEATURES:0˙˙˙˙˙˙˙˙˙I
accuracy_calc/prediction-
Accuracy_calc/prediction:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict