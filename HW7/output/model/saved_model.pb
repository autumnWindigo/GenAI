��
�#�"
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
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
,
Cos
x"T
y"T"
Ttype:

2
$
DisableCopyOnRead
resource�
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
,
Sin
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-0-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
count_2VarHandleOp*
_output_shapes
: *

debug_name
count_2/*
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
|
total_2VarHandleOp*
_output_shapes
: *

debug_name
total_2/*
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
�
Adam/v/duration_outputs/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/v/duration_outputs/bias/*
dtype0*
shape:*-
shared_nameAdam/v/duration_outputs/bias
�
0Adam/v/duration_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/v/duration_outputs/bias*
_output_shapes
:*
dtype0
�
Adam/m/duration_outputs/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/m/duration_outputs/bias/*
dtype0*
shape:*-
shared_nameAdam/m/duration_outputs/bias
�
0Adam/m/duration_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/m/duration_outputs/bias*
_output_shapes
:*
dtype0
�
Adam/v/duration_outputs/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/v/duration_outputs/kernel/*
dtype0*
shape:	�*/
shared_name Adam/v/duration_outputs/kernel
�
2Adam/v/duration_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/v/duration_outputs/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/duration_outputs/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/m/duration_outputs/kernel/*
dtype0*
shape:	�*/
shared_name Adam/m/duration_outputs/kernel
�
2Adam/m/duration_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/m/duration_outputs/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/note_outputs/biasVarHandleOp*
_output_shapes
: *)

debug_nameAdam/v/note_outputs/bias/*
dtype0*
shape:;*)
shared_nameAdam/v/note_outputs/bias
�
,Adam/v/note_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/v/note_outputs/bias*
_output_shapes
:;*
dtype0
�
Adam/m/note_outputs/biasVarHandleOp*
_output_shapes
: *)

debug_nameAdam/m/note_outputs/bias/*
dtype0*
shape:;*)
shared_nameAdam/m/note_outputs/bias
�
,Adam/m/note_outputs/bias/Read/ReadVariableOpReadVariableOpAdam/m/note_outputs/bias*
_output_shapes
:;*
dtype0
�
Adam/v/note_outputs/kernelVarHandleOp*
_output_shapes
: *+

debug_nameAdam/v/note_outputs/kernel/*
dtype0*
shape:	�;*+
shared_nameAdam/v/note_outputs/kernel
�
.Adam/v/note_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/v/note_outputs/kernel*
_output_shapes
:	�;*
dtype0
�
Adam/m/note_outputs/kernelVarHandleOp*
_output_shapes
: *+

debug_nameAdam/m/note_outputs/kernel/*
dtype0*
shape:	�;*+
shared_nameAdam/m/note_outputs/kernel
�
.Adam/m/note_outputs/kernel/Read/ReadVariableOpReadVariableOpAdam/m/note_outputs/kernel*
_output_shapes
:	�;*
dtype0
�
+Adam/v/attention/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *<

debug_name.,Adam/v/attention/layer_normalization_1/beta/*
dtype0*
shape:�*<
shared_name-+Adam/v/attention/layer_normalization_1/beta
�
?Adam/v/attention/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp+Adam/v/attention/layer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
+Adam/m/attention/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *<

debug_name.,Adam/m/attention/layer_normalization_1/beta/*
dtype0*
shape:�*<
shared_name-+Adam/m/attention/layer_normalization_1/beta
�
?Adam/m/attention/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp+Adam/m/attention/layer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
,Adam/v/attention/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *=

debug_name/-Adam/v/attention/layer_normalization_1/gamma/*
dtype0*
shape:�*=
shared_name.,Adam/v/attention/layer_normalization_1/gamma
�
@Adam/v/attention/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp,Adam/v/attention/layer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
,Adam/m/attention/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *=

debug_name/-Adam/m/attention/layer_normalization_1/gamma/*
dtype0*
shape:�*=
shared_name.,Adam/m/attention/layer_normalization_1/gamma
�
@Adam/m/attention/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp,Adam/m/attention/layer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/attention/dense_1/biasVarHandleOp*
_output_shapes
: *.

debug_name Adam/v/attention/dense_1/bias/*
dtype0*
shape:�*.
shared_nameAdam/v/attention/dense_1/bias
�
1Adam/v/attention/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense_1/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/attention/dense_1/biasVarHandleOp*
_output_shapes
: *.

debug_name Adam/m/attention/dense_1/bias/*
dtype0*
shape:�*.
shared_nameAdam/m/attention/dense_1/bias
�
1Adam/m/attention/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense_1/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/attention/dense_1/kernelVarHandleOp*
_output_shapes
: *0

debug_name" Adam/v/attention/dense_1/kernel/*
dtype0*
shape:
��*0
shared_name!Adam/v/attention/dense_1/kernel
�
3Adam/v/attention/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense_1/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/attention/dense_1/kernelVarHandleOp*
_output_shapes
: *0

debug_name" Adam/m/attention/dense_1/kernel/*
dtype0*
shape:
��*0
shared_name!Adam/m/attention/dense_1/kernel
�
3Adam/m/attention/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense_1/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/attention/dense/biasVarHandleOp*
_output_shapes
: *,

debug_nameAdam/v/attention/dense/bias/*
dtype0*
shape:�*,
shared_nameAdam/v/attention/dense/bias
�
/Adam/v/attention/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/attention/dense/biasVarHandleOp*
_output_shapes
: *,

debug_nameAdam/m/attention/dense/bias/*
dtype0*
shape:�*,
shared_nameAdam/m/attention/dense/bias
�
/Adam/m/attention/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/attention/dense/kernelVarHandleOp*
_output_shapes
: *.

debug_name Adam/v/attention/dense/kernel/*
dtype0*
shape:
��*.
shared_nameAdam/v/attention/dense/kernel
�
1Adam/v/attention/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/attention/dense/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/attention/dense/kernelVarHandleOp*
_output_shapes
: *.

debug_name Adam/m/attention/dense/kernel/*
dtype0*
shape:
��*.
shared_nameAdam/m/attention/dense/kernel
�
1Adam/m/attention/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/attention/dense/kernel* 
_output_shapes
:
��*
dtype0
�
)Adam/v/attention/layer_normalization/betaVarHandleOp*
_output_shapes
: *:

debug_name,*Adam/v/attention/layer_normalization/beta/*
dtype0*
shape:�*:
shared_name+)Adam/v/attention/layer_normalization/beta
�
=Adam/v/attention/layer_normalization/beta/Read/ReadVariableOpReadVariableOp)Adam/v/attention/layer_normalization/beta*
_output_shapes	
:�*
dtype0
�
)Adam/m/attention/layer_normalization/betaVarHandleOp*
_output_shapes
: *:

debug_name,*Adam/m/attention/layer_normalization/beta/*
dtype0*
shape:�*:
shared_name+)Adam/m/attention/layer_normalization/beta
�
=Adam/m/attention/layer_normalization/beta/Read/ReadVariableOpReadVariableOp)Adam/m/attention/layer_normalization/beta*
_output_shapes	
:�*
dtype0
�
*Adam/v/attention/layer_normalization/gammaVarHandleOp*
_output_shapes
: *;

debug_name-+Adam/v/attention/layer_normalization/gamma/*
dtype0*
shape:�*;
shared_name,*Adam/v/attention/layer_normalization/gamma
�
>Adam/v/attention/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp*Adam/v/attention/layer_normalization/gamma*
_output_shapes	
:�*
dtype0
�
*Adam/m/attention/layer_normalization/gammaVarHandleOp*
_output_shapes
: *;

debug_name-+Adam/m/attention/layer_normalization/gamma/*
dtype0*
shape:�*;
shared_name,*Adam/m/attention/layer_normalization/gamma
�
>Adam/m/attention/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp*Adam/m/attention/layer_normalization/gamma*
_output_shapes	
:�*
dtype0
�
;Adam/v/attention/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *L

debug_name><Adam/v/attention/multi_head_attention/attention_output/bias/*
dtype0*
shape:�*L
shared_name=;Adam/v/attention/multi_head_attention/attention_output/bias
�
OAdam/v/attention/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp;Adam/v/attention/multi_head_attention/attention_output/bias*
_output_shapes	
:�*
dtype0
�
;Adam/m/attention/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *L

debug_name><Adam/m/attention/multi_head_attention/attention_output/bias/*
dtype0*
shape:�*L
shared_name=;Adam/m/attention/multi_head_attention/attention_output/bias
�
OAdam/m/attention/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp;Adam/m/attention/multi_head_attention/attention_output/bias*
_output_shapes	
:�*
dtype0
�
=Adam/v/attention/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *N

debug_name@>Adam/v/attention/multi_head_attention/attention_output/kernel/*
dtype0*
shape:��*N
shared_name?=Adam/v/attention/multi_head_attention/attention_output/kernel
�
QAdam/v/attention/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp=Adam/v/attention/multi_head_attention/attention_output/kernel*$
_output_shapes
:��*
dtype0
�
=Adam/m/attention/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *N

debug_name@>Adam/m/attention/multi_head_attention/attention_output/kernel/*
dtype0*
shape:��*N
shared_name?=Adam/m/attention/multi_head_attention/attention_output/kernel
�
QAdam/m/attention/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp=Adam/m/attention/multi_head_attention/attention_output/kernel*$
_output_shapes
:��*
dtype0
�
0Adam/v/attention/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *A

debug_name31Adam/v/attention/multi_head_attention/value/bias/*
dtype0*
shape:	�*A
shared_name20Adam/v/attention/multi_head_attention/value/bias
�
DAdam/v/attention/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp0Adam/v/attention/multi_head_attention/value/bias*
_output_shapes
:	�*
dtype0
�
0Adam/m/attention/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *A

debug_name31Adam/m/attention/multi_head_attention/value/bias/*
dtype0*
shape:	�*A
shared_name20Adam/m/attention/multi_head_attention/value/bias
�
DAdam/m/attention/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp0Adam/m/attention/multi_head_attention/value/bias*
_output_shapes
:	�*
dtype0
�
2Adam/v/attention/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *C

debug_name53Adam/v/attention/multi_head_attention/value/kernel/*
dtype0*
shape:��*C
shared_name42Adam/v/attention/multi_head_attention/value/kernel
�
FAdam/v/attention/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp2Adam/v/attention/multi_head_attention/value/kernel*$
_output_shapes
:��*
dtype0
�
2Adam/m/attention/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *C

debug_name53Adam/m/attention/multi_head_attention/value/kernel/*
dtype0*
shape:��*C
shared_name42Adam/m/attention/multi_head_attention/value/kernel
�
FAdam/m/attention/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp2Adam/m/attention/multi_head_attention/value/kernel*$
_output_shapes
:��*
dtype0
�
.Adam/v/attention/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *?

debug_name1/Adam/v/attention/multi_head_attention/key/bias/*
dtype0*
shape:	�*?
shared_name0.Adam/v/attention/multi_head_attention/key/bias
�
BAdam/v/attention/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp.Adam/v/attention/multi_head_attention/key/bias*
_output_shapes
:	�*
dtype0
�
.Adam/m/attention/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *?

debug_name1/Adam/m/attention/multi_head_attention/key/bias/*
dtype0*
shape:	�*?
shared_name0.Adam/m/attention/multi_head_attention/key/bias
�
BAdam/m/attention/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp.Adam/m/attention/multi_head_attention/key/bias*
_output_shapes
:	�*
dtype0
�
0Adam/v/attention/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *A

debug_name31Adam/v/attention/multi_head_attention/key/kernel/*
dtype0*
shape:��*A
shared_name20Adam/v/attention/multi_head_attention/key/kernel
�
DAdam/v/attention/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp0Adam/v/attention/multi_head_attention/key/kernel*$
_output_shapes
:��*
dtype0
�
0Adam/m/attention/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *A

debug_name31Adam/m/attention/multi_head_attention/key/kernel/*
dtype0*
shape:��*A
shared_name20Adam/m/attention/multi_head_attention/key/kernel
�
DAdam/m/attention/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp0Adam/m/attention/multi_head_attention/key/kernel*$
_output_shapes
:��*
dtype0
�
0Adam/v/attention/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *A

debug_name31Adam/v/attention/multi_head_attention/query/bias/*
dtype0*
shape:	�*A
shared_name20Adam/v/attention/multi_head_attention/query/bias
�
DAdam/v/attention/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp0Adam/v/attention/multi_head_attention/query/bias*
_output_shapes
:	�*
dtype0
�
0Adam/m/attention/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *A

debug_name31Adam/m/attention/multi_head_attention/query/bias/*
dtype0*
shape:	�*A
shared_name20Adam/m/attention/multi_head_attention/query/bias
�
DAdam/m/attention/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp0Adam/m/attention/multi_head_attention/query/bias*
_output_shapes
:	�*
dtype0
�
2Adam/v/attention/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *C

debug_name53Adam/v/attention/multi_head_attention/query/kernel/*
dtype0*
shape:��*C
shared_name42Adam/v/attention/multi_head_attention/query/kernel
�
FAdam/v/attention/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp2Adam/v/attention/multi_head_attention/query/kernel*$
_output_shapes
:��*
dtype0
�
2Adam/m/attention/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *C

debug_name53Adam/m/attention/multi_head_attention/query/kernel/*
dtype0*
shape:��*C
shared_name42Adam/m/attention/multi_head_attention/query/kernel
�
FAdam/m/attention/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp2Adam/m/attention/multi_head_attention/query/kernel*$
_output_shapes
:��*
dtype0
�
<Adam/v/token_and_position_embedding_2/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *M

debug_name?=Adam/v/token_and_position_embedding_2/embedding_2/embeddings/*
dtype0*
shape:	�*M
shared_name><Adam/v/token_and_position_embedding_2/embedding_2/embeddings
�
PAdam/v/token_and_position_embedding_2/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp<Adam/v/token_and_position_embedding_2/embedding_2/embeddings*
_output_shapes
:	�*
dtype0
�
<Adam/m/token_and_position_embedding_2/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *M

debug_name?=Adam/m/token_and_position_embedding_2/embedding_2/embeddings/*
dtype0*
shape:	�*M
shared_name><Adam/m/token_and_position_embedding_2/embedding_2/embeddings
�
PAdam/m/token_and_position_embedding_2/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp<Adam/m/token_and_position_embedding_2/embedding_2/embeddings*
_output_shapes
:	�*
dtype0
�
<Adam/v/token_and_position_embedding_1/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *M

debug_name?=Adam/v/token_and_position_embedding_1/embedding_1/embeddings/*
dtype0*
shape:	;�*M
shared_name><Adam/v/token_and_position_embedding_1/embedding_1/embeddings
�
PAdam/v/token_and_position_embedding_1/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp<Adam/v/token_and_position_embedding_1/embedding_1/embeddings*
_output_shapes
:	;�*
dtype0
�
<Adam/m/token_and_position_embedding_1/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *M

debug_name?=Adam/m/token_and_position_embedding_1/embedding_1/embeddings/*
dtype0*
shape:	;�*M
shared_name><Adam/m/token_and_position_embedding_1/embedding_1/embeddings
�
PAdam/m/token_and_position_embedding_1/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp<Adam/m/token_and_position_embedding_1/embedding_1/embeddings*
_output_shapes
:	;�*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
$attention/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *5

debug_name'%attention/layer_normalization_1/beta/*
dtype0*
shape:�*5
shared_name&$attention/layer_normalization_1/beta
�
8attention/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp$attention/layer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
%attention/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *6

debug_name(&attention/layer_normalization_1/gamma/*
dtype0*
shape:�*6
shared_name'%attention/layer_normalization_1/gamma
�
9attention/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp%attention/layer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
attention/dense_1/biasVarHandleOp*
_output_shapes
: *'

debug_nameattention/dense_1/bias/*
dtype0*
shape:�*'
shared_nameattention/dense_1/bias
~
*attention/dense_1/bias/Read/ReadVariableOpReadVariableOpattention/dense_1/bias*
_output_shapes	
:�*
dtype0
�
attention/dense_1/kernelVarHandleOp*
_output_shapes
: *)

debug_nameattention/dense_1/kernel/*
dtype0*
shape:
��*)
shared_nameattention/dense_1/kernel
�
,attention/dense_1/kernel/Read/ReadVariableOpReadVariableOpattention/dense_1/kernel* 
_output_shapes
:
��*
dtype0
�
attention/dense/biasVarHandleOp*
_output_shapes
: *%

debug_nameattention/dense/bias/*
dtype0*
shape:�*%
shared_nameattention/dense/bias
z
(attention/dense/bias/Read/ReadVariableOpReadVariableOpattention/dense/bias*
_output_shapes	
:�*
dtype0
�
attention/dense/kernelVarHandleOp*
_output_shapes
: *'

debug_nameattention/dense/kernel/*
dtype0*
shape:
��*'
shared_nameattention/dense/kernel
�
*attention/dense/kernel/Read/ReadVariableOpReadVariableOpattention/dense/kernel* 
_output_shapes
:
��*
dtype0
�
"attention/layer_normalization/betaVarHandleOp*
_output_shapes
: *3

debug_name%#attention/layer_normalization/beta/*
dtype0*
shape:�*3
shared_name$"attention/layer_normalization/beta
�
6attention/layer_normalization/beta/Read/ReadVariableOpReadVariableOp"attention/layer_normalization/beta*
_output_shapes	
:�*
dtype0
�
#attention/layer_normalization/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$attention/layer_normalization/gamma/*
dtype0*
shape:�*4
shared_name%#attention/layer_normalization/gamma
�
7attention/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp#attention/layer_normalization/gamma*
_output_shapes	
:�*
dtype0
�
4attention/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *E

debug_name75attention/multi_head_attention/attention_output/bias/*
dtype0*
shape:�*E
shared_name64attention/multi_head_attention/attention_output/bias
�
Hattention/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp4attention/multi_head_attention/attention_output/bias*
_output_shapes	
:�*
dtype0
�
6attention/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *G

debug_name97attention/multi_head_attention/attention_output/kernel/*
dtype0*
shape:��*G
shared_name86attention/multi_head_attention/attention_output/kernel
�
Jattention/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp6attention/multi_head_attention/attention_output/kernel*$
_output_shapes
:��*
dtype0
�
)attention/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *:

debug_name,*attention/multi_head_attention/value/bias/*
dtype0*
shape:	�*:
shared_name+)attention/multi_head_attention/value/bias
�
=attention/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp)attention/multi_head_attention/value/bias*
_output_shapes
:	�*
dtype0
�
+attention/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,attention/multi_head_attention/value/kernel/*
dtype0*
shape:��*<
shared_name-+attention/multi_head_attention/value/kernel
�
?attention/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp+attention/multi_head_attention/value/kernel*$
_output_shapes
:��*
dtype0
�
'attention/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *8

debug_name*(attention/multi_head_attention/key/bias/*
dtype0*
shape:	�*8
shared_name)'attention/multi_head_attention/key/bias
�
;attention/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp'attention/multi_head_attention/key/bias*
_output_shapes
:	�*
dtype0
�
)attention/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *:

debug_name,*attention/multi_head_attention/key/kernel/*
dtype0*
shape:��*:
shared_name+)attention/multi_head_attention/key/kernel
�
=attention/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp)attention/multi_head_attention/key/kernel*$
_output_shapes
:��*
dtype0
�
)attention/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *:

debug_name,*attention/multi_head_attention/query/bias/*
dtype0*
shape:	�*:
shared_name+)attention/multi_head_attention/query/bias
�
=attention/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp)attention/multi_head_attention/query/bias*
_output_shapes
:	�*
dtype0
�
+attention/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,attention/multi_head_attention/query/kernel/*
dtype0*
shape:��*<
shared_name-+attention/multi_head_attention/query/kernel
�
?attention/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp+attention/multi_head_attention/query/kernel*$
_output_shapes
:��*
dtype0
�
5token_and_position_embedding_2/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *F

debug_name86token_and_position_embedding_2/embedding_2/embeddings/*
dtype0*
shape:	�*F
shared_name75token_and_position_embedding_2/embedding_2/embeddings
�
Itoken_and_position_embedding_2/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_2/embedding_2/embeddings*
_output_shapes
:	�*
dtype0
�
5token_and_position_embedding_1/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *F

debug_name86token_and_position_embedding_1/embedding_1/embeddings/*
dtype0*
shape:	;�*F
shared_name75token_and_position_embedding_1/embedding_1/embeddings
�
Itoken_and_position_embedding_1/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp5token_and_position_embedding_1/embedding_1/embeddings*
_output_shapes
:	;�*
dtype0
�
duration_outputs/biasVarHandleOp*
_output_shapes
: *&

debug_nameduration_outputs/bias/*
dtype0*
shape:*&
shared_nameduration_outputs/bias
{
)duration_outputs/bias/Read/ReadVariableOpReadVariableOpduration_outputs/bias*
_output_shapes
:*
dtype0
�
duration_outputs/kernelVarHandleOp*
_output_shapes
: *(

debug_nameduration_outputs/kernel/*
dtype0*
shape:	�*(
shared_nameduration_outputs/kernel
�
+duration_outputs/kernel/Read/ReadVariableOpReadVariableOpduration_outputs/kernel*
_output_shapes
:	�*
dtype0
�
note_outputs/biasVarHandleOp*
_output_shapes
: *"

debug_namenote_outputs/bias/*
dtype0*
shape:;*"
shared_namenote_outputs/bias
s
%note_outputs/bias/Read/ReadVariableOpReadVariableOpnote_outputs/bias*
_output_shapes
:;*
dtype0
�
note_outputs/kernelVarHandleOp*
_output_shapes
: *$

debug_namenote_outputs/kernel/*
dtype0*
shape:	�;*$
shared_namenote_outputs/kernel
|
'note_outputs/kernel/Read/ReadVariableOpReadVariableOpnote_outputs/kernel*
_output_shapes
:	�;*
dtype0
�
serving_default_input_1Placeholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�
serving_default_input_2Placeholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_25token_and_position_embedding_1/embedding_1/embeddings5token_and_position_embedding_2/embedding_2/embeddings+attention/multi_head_attention/query/kernel)attention/multi_head_attention/query/bias)attention/multi_head_attention/key/kernel'attention/multi_head_attention/key/bias+attention/multi_head_attention/value/kernel)attention/multi_head_attention/value/bias6attention/multi_head_attention/attention_output/kernel4attention/multi_head_attention/attention_output/bias#attention/layer_normalization/gamma"attention/layer_normalization/betaattention/dense/kernelattention/dense/biasattention/dense_1/kernelattention/dense_1/bias%attention/layer_normalization_1/gamma$attention/layer_normalization_1/betaduration_outputs/kernelduration_outputs/biasnote_outputs/kernelnote_outputs/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:������������������:������������������;*8
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *-
f(R&
$__inference_signature_wrapper_104884

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures
#_self_saveable_object_factories*
'
#_self_saveable_object_factories* 
'
#_self_saveable_object_factories* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb
#_self_saveable_object_factories*
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%	token_emb
&pos_emb
#'_self_saveable_object_factories*
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
#._self_saveable_object_factories* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5attn
6	dropout_1
7ln_1
	8ffn_1
	9ffn_2
:	dropout_2
;ln_2
#<_self_saveable_object_factories*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
#E_self_saveable_object_factories*
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
#N_self_saveable_object_factories*
�
O0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15
_16
`17
C18
D19
L20
M21*
�
O0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15
_16
`17
C18
D19
L20
M21*
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ftrace_0
gtrace_1* 

htrace_0
itrace_1* 
* 
�
j
_variables
k_iterations
l_learning_rate
m_index_dict
n
_momentums
o_velocities
p_update_step_xla*
* 

qserving_default* 
* 
* 
* 

O0*

O0*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
O
embeddings
#_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
* 

P0*

P0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
P
embeddings
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
z
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10
\11
]12
^13
_14
`15*
z
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10
\11
]12
^13
_14
`15*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Ygamma
Zbeta
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	_gamma
`beta
$�_self_saveable_object_factories*
* 

C0
D1*

C0
D1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
c]
VARIABLE_VALUEnote_outputs/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEnote_outputs/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

L0
M1*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
ga
VARIABLE_VALUEduration_outputs/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEduration_outputs/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
uo
VARIABLE_VALUE5token_and_position_embedding_1/embedding_1/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5token_and_position_embedding_2/embedding_2/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+attention/multi_head_attention/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)attention/multi_head_attention/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)attention/multi_head_attention/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'attention/multi_head_attention/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+attention/multi_head_attention/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)attention/multi_head_attention/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6attention/multi_head_attention/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4attention/multi_head_attention/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#attention/layer_normalization/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"attention/layer_normalization/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEattention/dense/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEattention/dense/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEattention/dense_1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEattention/dense_1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%attention/layer_normalization_1/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$attention/layer_normalization_1/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

�0
�1
�2*
* 
* 
* 
* 
* 
* 
�
k0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21*
* 
* 
* 

0
1*
* 
* 
* 
* 
* 

O0*

O0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 

%0
&1*
* 
* 
* 
* 
* 

P0*

P0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
5
50
61
72
83
94
:5
;6*
* 
* 
* 
* 
* 
* 
* 
<
Q0
R1
S2
T3
U4
V5
W6
X7*
<
Q0
R1
S2
T3
U4
V5
W6
X7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Qkernel
Rbias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Skernel
Tbias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Ukernel
Vbias
$�_self_saveable_object_factories*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Wkernel
Xbias
$�_self_saveable_object_factories*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

Y0
Z1*

Y0
Z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 

[0
\1*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

_0
`1*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
��
VARIABLE_VALUE<Adam/m/token_and_position_embedding_1/embedding_1/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/v/token_and_position_embedding_1/embedding_1/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/m/token_and_position_embedding_2/embedding_2/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/v/token_and_position_embedding_2/embedding_2/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE2Adam/m/attention/multi_head_attention/query/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE2Adam/v/attention/multi_head_attention/query/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/m/attention/multi_head_attention/query/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/v/attention/multi_head_attention/query/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/m/attention/multi_head_attention/key/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE0Adam/v/attention/multi_head_attention/key/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adam/m/attention/multi_head_attention/key/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adam/v/attention/multi_head_attention/key/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/m/attention/multi_head_attention/value/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/v/attention/multi_head_attention/value/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE0Adam/m/attention/multi_head_attention/value/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE0Adam/v/attention/multi_head_attention/value/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/m/attention/multi_head_attention/attention_output/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/v/attention/multi_head_attention/attention_output/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/m/attention/multi_head_attention/attention_output/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/v/attention/multi_head_attention/attention_output/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/attention/layer_normalization/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/attention/layer_normalization/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Adam/m/attention/layer_normalization/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Adam/v/attention/layer_normalization/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/attention/dense/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/attention/dense/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/attention/dense/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/attention/dense/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/attention/dense_1/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/attention/dense_1/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/attention/dense_1/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/attention/dense_1/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/m/attention/layer_normalization_1/gamma2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/attention/layer_normalization_1/gamma2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/m/attention/layer_normalization_1/beta2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adam/v/attention/layer_normalization_1/beta2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/note_outputs/kernel2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/note_outputs/kernel2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/note_outputs/bias2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/note_outputs/bias2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/duration_outputs/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/duration_outputs/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/duration_outputs/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/duration_outputs/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
�0
�1
�2
�3
�4
�5*
* 
* 
* 

Q0
R1*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

S0
T1*

S0
T1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
(
$�_self_saveable_object_factories* 
* 

W0
X1*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamenote_outputs/kernelnote_outputs/biasduration_outputs/kernelduration_outputs/bias5token_and_position_embedding_1/embedding_1/embeddings5token_and_position_embedding_2/embedding_2/embeddings+attention/multi_head_attention/query/kernel)attention/multi_head_attention/query/bias)attention/multi_head_attention/key/kernel'attention/multi_head_attention/key/bias+attention/multi_head_attention/value/kernel)attention/multi_head_attention/value/bias6attention/multi_head_attention/attention_output/kernel4attention/multi_head_attention/attention_output/bias#attention/layer_normalization/gamma"attention/layer_normalization/betaattention/dense/kernelattention/dense/biasattention/dense_1/kernelattention/dense_1/bias%attention/layer_normalization_1/gamma$attention/layer_normalization_1/beta	iterationlearning_rate<Adam/m/token_and_position_embedding_1/embedding_1/embeddings<Adam/v/token_and_position_embedding_1/embedding_1/embeddings<Adam/m/token_and_position_embedding_2/embedding_2/embeddings<Adam/v/token_and_position_embedding_2/embedding_2/embeddings2Adam/m/attention/multi_head_attention/query/kernel2Adam/v/attention/multi_head_attention/query/kernel0Adam/m/attention/multi_head_attention/query/bias0Adam/v/attention/multi_head_attention/query/bias0Adam/m/attention/multi_head_attention/key/kernel0Adam/v/attention/multi_head_attention/key/kernel.Adam/m/attention/multi_head_attention/key/bias.Adam/v/attention/multi_head_attention/key/bias2Adam/m/attention/multi_head_attention/value/kernel2Adam/v/attention/multi_head_attention/value/kernel0Adam/m/attention/multi_head_attention/value/bias0Adam/v/attention/multi_head_attention/value/bias=Adam/m/attention/multi_head_attention/attention_output/kernel=Adam/v/attention/multi_head_attention/attention_output/kernel;Adam/m/attention/multi_head_attention/attention_output/bias;Adam/v/attention/multi_head_attention/attention_output/bias*Adam/m/attention/layer_normalization/gamma*Adam/v/attention/layer_normalization/gamma)Adam/m/attention/layer_normalization/beta)Adam/v/attention/layer_normalization/betaAdam/m/attention/dense/kernelAdam/v/attention/dense/kernelAdam/m/attention/dense/biasAdam/v/attention/dense/biasAdam/m/attention/dense_1/kernelAdam/v/attention/dense_1/kernelAdam/m/attention/dense_1/biasAdam/v/attention/dense_1/bias,Adam/m/attention/layer_normalization_1/gamma,Adam/v/attention/layer_normalization_1/gamma+Adam/m/attention/layer_normalization_1/beta+Adam/v/attention/layer_normalization_1/betaAdam/m/note_outputs/kernelAdam/v/note_outputs/kernelAdam/m/note_outputs/biasAdam/v/note_outputs/biasAdam/m/duration_outputs/kernelAdam/v/duration_outputs/kernelAdam/m/duration_outputs/biasAdam/v/duration_outputs/biastotal_2count_2total_1count_1totalcountConst*W
TinP
N2L*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *(
f#R!
__inference__traced_save_105445
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenote_outputs/kernelnote_outputs/biasduration_outputs/kernelduration_outputs/bias5token_and_position_embedding_1/embedding_1/embeddings5token_and_position_embedding_2/embedding_2/embeddings+attention/multi_head_attention/query/kernel)attention/multi_head_attention/query/bias)attention/multi_head_attention/key/kernel'attention/multi_head_attention/key/bias+attention/multi_head_attention/value/kernel)attention/multi_head_attention/value/bias6attention/multi_head_attention/attention_output/kernel4attention/multi_head_attention/attention_output/bias#attention/layer_normalization/gamma"attention/layer_normalization/betaattention/dense/kernelattention/dense/biasattention/dense_1/kernelattention/dense_1/bias%attention/layer_normalization_1/gamma$attention/layer_normalization_1/beta	iterationlearning_rate<Adam/m/token_and_position_embedding_1/embedding_1/embeddings<Adam/v/token_and_position_embedding_1/embedding_1/embeddings<Adam/m/token_and_position_embedding_2/embedding_2/embeddings<Adam/v/token_and_position_embedding_2/embedding_2/embeddings2Adam/m/attention/multi_head_attention/query/kernel2Adam/v/attention/multi_head_attention/query/kernel0Adam/m/attention/multi_head_attention/query/bias0Adam/v/attention/multi_head_attention/query/bias0Adam/m/attention/multi_head_attention/key/kernel0Adam/v/attention/multi_head_attention/key/kernel.Adam/m/attention/multi_head_attention/key/bias.Adam/v/attention/multi_head_attention/key/bias2Adam/m/attention/multi_head_attention/value/kernel2Adam/v/attention/multi_head_attention/value/kernel0Adam/m/attention/multi_head_attention/value/bias0Adam/v/attention/multi_head_attention/value/bias=Adam/m/attention/multi_head_attention/attention_output/kernel=Adam/v/attention/multi_head_attention/attention_output/kernel;Adam/m/attention/multi_head_attention/attention_output/bias;Adam/v/attention/multi_head_attention/attention_output/bias*Adam/m/attention/layer_normalization/gamma*Adam/v/attention/layer_normalization/gamma)Adam/m/attention/layer_normalization/beta)Adam/v/attention/layer_normalization/betaAdam/m/attention/dense/kernelAdam/v/attention/dense/kernelAdam/m/attention/dense/biasAdam/v/attention/dense/biasAdam/m/attention/dense_1/kernelAdam/v/attention/dense_1/kernelAdam/m/attention/dense_1/biasAdam/v/attention/dense_1/bias,Adam/m/attention/layer_normalization_1/gamma,Adam/v/attention/layer_normalization_1/gamma+Adam/m/attention/layer_normalization_1/beta+Adam/v/attention/layer_normalization_1/betaAdam/m/note_outputs/kernelAdam/v/note_outputs/kernelAdam/m/note_outputs/biasAdam/v/note_outputs/biasAdam/m/duration_outputs/kernelAdam/v/duration_outputs/kernelAdam/m/duration_outputs/biasAdam/v/duration_outputs/biastotal_2count_2total_1count_1totalcount*V
TinO
M2K*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *+
f&R$
"__inference__traced_restore_105676��
�
q
G__inference_concatenate_layer_call_and_return_conditional_losses_104495

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:�������������������e
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:�������������������:�������������������:]Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104977

inputs4
!tensordot_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
=__inference_token_and_position_embedding_2_layer_call_fn_2977
x
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *a
f\RZ
X__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_2971<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 }
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name137121:S O
0
_output_shapes
:������������������

_user_specified_namex
�=
�
X__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_3029
x6
#embedding_1_embedding_lookup_137068:	;�
identity��embedding_1/embedding_lookup�
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_137068x*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/137068*5
_output_shapes#
!:�������������������*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_output_shapes#
!:��������������������
sine_position_encoding_1/ShapeShape.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::��
,sine_position_encoding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
.sine_position_encoding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������x
.sine_position_encoding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sine_position_encoding_1/strided_sliceStridedSlice'sine_position_encoding_1/Shape:output:05sine_position_encoding_1/strided_slice/stack:output:07sine_position_encoding_1/strided_slice/stack_1:output:07sine_position_encoding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
.sine_position_encoding_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
0sine_position_encoding_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(sine_position_encoding_1/strided_slice_1StridedSlice'sine_position_encoding_1/Shape:output:07sine_position_encoding_1/strided_slice_1/stack:output:09sine_position_encoding_1/strided_slice_1/stack_1:output:09sine_position_encoding_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_1/rangeRange-sine_position_encoding_1/range/start:output:0/sine_position_encoding_1/strided_slice:output:0-sine_position_encoding_1/range/delta:output:0*#
_output_shapes
:����������
sine_position_encoding_1/CastCast'sine_position_encoding_1/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:���������f
!sine_position_encoding_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8h
&sine_position_encoding_1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_1/range_1Range/sine_position_encoding_1/range_1/start:output:01sine_position_encoding_1/strided_slice_1:output:0/sine_position_encoding_1/range_1/delta:output:0*
_output_shapes	
:�e
#sine_position_encoding_1/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sine_position_encoding_1/floordivFloorDiv)sine_position_encoding_1/range_1:output:0,sine_position_encoding_1/floordiv/y:output:0*
T0*
_output_shapes	
:�`
sine_position_encoding_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_1/mulMul'sine_position_encoding_1/mul/x:output:0%sine_position_encoding_1/floordiv:z:0*
T0*
_output_shapes	
:�~
sine_position_encoding_1/Cast_2Cast sine_position_encoding_1/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:��
sine_position_encoding_1/Cast_3Cast1sine_position_encoding_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
 sine_position_encoding_1/truedivRealDiv#sine_position_encoding_1/Cast_2:y:0#sine_position_encoding_1/Cast_3:y:0*
T0*
_output_shapes	
:��
sine_position_encoding_1/PowPow*sine_position_encoding_1/Cast_1/x:output:0$sine_position_encoding_1/truediv:z:0*
T0*
_output_shapes	
:�i
'sine_position_encoding_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
#sine_position_encoding_1/ExpandDims
ExpandDims!sine_position_encoding_1/Cast:y:00sine_position_encoding_1/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������k
)sine_position_encoding_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
%sine_position_encoding_1/ExpandDims_1
ExpandDims sine_position_encoding_1/Pow:z:02sine_position_encoding_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	��
sine_position_encoding_1/mul_1Mul,sine_position_encoding_1/ExpandDims:output:0.sine_position_encoding_1/ExpandDims_1:output:0*
T0*(
_output_shapes
:����������h
&sine_position_encoding_1/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_1/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_1/range_2Range/sine_position_encoding_1/range_2/start:output:01sine_position_encoding_1/strided_slice_1:output:0/sine_position_encoding_1/range_2/delta:output:0*
_output_shapes	
:�`
sine_position_encoding_1/mod/yConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_1/modFloorMod)sine_position_encoding_1/range_2:output:0'sine_position_encoding_1/mod/y:output:0*
T0*
_output_shapes	
:�~
sine_position_encoding_1/Cast_4Cast sine_position_encoding_1/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:�c
sine_position_encoding_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sine_position_encoding_1/subSub'sine_position_encoding_1/sub/x:output:0#sine_position_encoding_1/Cast_4:y:0*
T0*
_output_shapes	
:�z
sine_position_encoding_1/SinSin"sine_position_encoding_1/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_1/mul_2Mul sine_position_encoding_1/Sin:y:0 sine_position_encoding_1/sub:z:0*
T0*(
_output_shapes
:����������z
sine_position_encoding_1/CosCos"sine_position_encoding_1/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_1/mul_3Mul sine_position_encoding_1/Cos:y:0#sine_position_encoding_1/Cast_4:y:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_1/addAddV2"sine_position_encoding_1/mul_2:z:0"sine_position_encoding_1/mul_3:z:0*
T0*(
_output_shapes
:�����������
$sine_position_encoding_1/BroadcastToBroadcastTo sine_position_encoding_1/add:z:0'sine_position_encoding_1/Shape:output:0*
T0*5
_output_shapes#
!:��������������������
addAddV2.embedding_1/embedding_lookup/Identity:output:0-sine_position_encoding_1/BroadcastTo:output:0*
T0*5
_output_shapes#
!:�������������������A
NoOpNoOp^embedding_1/embedding_lookup*
_output_shapes
 d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:&"
 
_user_specified_name137068:S O
0
_output_shapes
:������������������

_user_specified_namex
��
�8
"__inference__traced_restore_105676
file_prefix7
$assignvariableop_note_outputs_kernel:	�;2
$assignvariableop_1_note_outputs_bias:;=
*assignvariableop_2_duration_outputs_kernel:	�6
(assignvariableop_3_duration_outputs_bias:[
Hassignvariableop_4_token_and_position_embedding_1_embedding_1_embeddings:	;�[
Hassignvariableop_5_token_and_position_embedding_2_embedding_2_embeddings:	�V
>assignvariableop_6_attention_multi_head_attention_query_kernel:��O
<assignvariableop_7_attention_multi_head_attention_query_bias:	�T
<assignvariableop_8_attention_multi_head_attention_key_kernel:��M
:assignvariableop_9_attention_multi_head_attention_key_bias:	�W
?assignvariableop_10_attention_multi_head_attention_value_kernel:��P
=assignvariableop_11_attention_multi_head_attention_value_bias:	�b
Jassignvariableop_12_attention_multi_head_attention_attention_output_kernel:��W
Hassignvariableop_13_attention_multi_head_attention_attention_output_bias:	�F
7assignvariableop_14_attention_layer_normalization_gamma:	�E
6assignvariableop_15_attention_layer_normalization_beta:	�>
*assignvariableop_16_attention_dense_kernel:
��7
(assignvariableop_17_attention_dense_bias:	�@
,assignvariableop_18_attention_dense_1_kernel:
��9
*assignvariableop_19_attention_dense_1_bias:	�H
9assignvariableop_20_attention_layer_normalization_1_gamma:	�G
8assignvariableop_21_attention_layer_normalization_1_beta:	�'
assignvariableop_22_iteration:	 +
!assignvariableop_23_learning_rate: c
Passignvariableop_24_adam_m_token_and_position_embedding_1_embedding_1_embeddings:	;�c
Passignvariableop_25_adam_v_token_and_position_embedding_1_embedding_1_embeddings:	;�c
Passignvariableop_26_adam_m_token_and_position_embedding_2_embedding_2_embeddings:	�c
Passignvariableop_27_adam_v_token_and_position_embedding_2_embedding_2_embeddings:	�^
Fassignvariableop_28_adam_m_attention_multi_head_attention_query_kernel:��^
Fassignvariableop_29_adam_v_attention_multi_head_attention_query_kernel:��W
Dassignvariableop_30_adam_m_attention_multi_head_attention_query_bias:	�W
Dassignvariableop_31_adam_v_attention_multi_head_attention_query_bias:	�\
Dassignvariableop_32_adam_m_attention_multi_head_attention_key_kernel:��\
Dassignvariableop_33_adam_v_attention_multi_head_attention_key_kernel:��U
Bassignvariableop_34_adam_m_attention_multi_head_attention_key_bias:	�U
Bassignvariableop_35_adam_v_attention_multi_head_attention_key_bias:	�^
Fassignvariableop_36_adam_m_attention_multi_head_attention_value_kernel:��^
Fassignvariableop_37_adam_v_attention_multi_head_attention_value_kernel:��W
Dassignvariableop_38_adam_m_attention_multi_head_attention_value_bias:	�W
Dassignvariableop_39_adam_v_attention_multi_head_attention_value_bias:	�i
Qassignvariableop_40_adam_m_attention_multi_head_attention_attention_output_kernel:��i
Qassignvariableop_41_adam_v_attention_multi_head_attention_attention_output_kernel:��^
Oassignvariableop_42_adam_m_attention_multi_head_attention_attention_output_bias:	�^
Oassignvariableop_43_adam_v_attention_multi_head_attention_attention_output_bias:	�M
>assignvariableop_44_adam_m_attention_layer_normalization_gamma:	�M
>assignvariableop_45_adam_v_attention_layer_normalization_gamma:	�L
=assignvariableop_46_adam_m_attention_layer_normalization_beta:	�L
=assignvariableop_47_adam_v_attention_layer_normalization_beta:	�E
1assignvariableop_48_adam_m_attention_dense_kernel:
��E
1assignvariableop_49_adam_v_attention_dense_kernel:
��>
/assignvariableop_50_adam_m_attention_dense_bias:	�>
/assignvariableop_51_adam_v_attention_dense_bias:	�G
3assignvariableop_52_adam_m_attention_dense_1_kernel:
��G
3assignvariableop_53_adam_v_attention_dense_1_kernel:
��@
1assignvariableop_54_adam_m_attention_dense_1_bias:	�@
1assignvariableop_55_adam_v_attention_dense_1_bias:	�O
@assignvariableop_56_adam_m_attention_layer_normalization_1_gamma:	�O
@assignvariableop_57_adam_v_attention_layer_normalization_1_gamma:	�N
?assignvariableop_58_adam_m_attention_layer_normalization_1_beta:	�N
?assignvariableop_59_adam_v_attention_layer_normalization_1_beta:	�A
.assignvariableop_60_adam_m_note_outputs_kernel:	�;A
.assignvariableop_61_adam_v_note_outputs_kernel:	�;:
,assignvariableop_62_adam_m_note_outputs_bias:;:
,assignvariableop_63_adam_v_note_outputs_bias:;E
2assignvariableop_64_adam_m_duration_outputs_kernel:	�E
2assignvariableop_65_adam_v_duration_outputs_kernel:	�>
0assignvariableop_66_adam_m_duration_outputs_bias:>
0assignvariableop_67_adam_v_duration_outputs_bias:%
assignvariableop_68_total_2: %
assignvariableop_69_count_2: %
assignvariableop_70_total_1: %
assignvariableop_71_count_1: #
assignvariableop_72_total: #
assignvariableop_73_count: 
identity_75��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*�
value�B�KB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*�
value�B�KB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Y
dtypesO
M2K	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp$assignvariableop_note_outputs_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp$assignvariableop_1_note_outputs_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp*assignvariableop_2_duration_outputs_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp(assignvariableop_3_duration_outputs_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpHassignvariableop_4_token_and_position_embedding_1_embedding_1_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpHassignvariableop_5_token_and_position_embedding_2_embedding_2_embeddingsIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp>assignvariableop_6_attention_multi_head_attention_query_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp<assignvariableop_7_attention_multi_head_attention_query_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp<assignvariableop_8_attention_multi_head_attention_key_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp:assignvariableop_9_attention_multi_head_attention_key_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp?assignvariableop_10_attention_multi_head_attention_value_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp=assignvariableop_11_attention_multi_head_attention_value_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpJassignvariableop_12_attention_multi_head_attention_attention_output_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpHassignvariableop_13_attention_multi_head_attention_attention_output_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp7assignvariableop_14_attention_layer_normalization_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp6assignvariableop_15_attention_layer_normalization_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_attention_dense_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp(assignvariableop_17_attention_dense_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp,assignvariableop_18_attention_dense_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_attention_dense_1_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp9assignvariableop_20_attention_layer_normalization_1_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp8assignvariableop_21_attention_layer_normalization_1_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_iterationIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp!assignvariableop_23_learning_rateIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpPassignvariableop_24_adam_m_token_and_position_embedding_1_embedding_1_embeddingsIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpPassignvariableop_25_adam_v_token_and_position_embedding_1_embedding_1_embeddingsIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpPassignvariableop_26_adam_m_token_and_position_embedding_2_embedding_2_embeddingsIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpPassignvariableop_27_adam_v_token_and_position_embedding_2_embedding_2_embeddingsIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpFassignvariableop_28_adam_m_attention_multi_head_attention_query_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpFassignvariableop_29_adam_v_attention_multi_head_attention_query_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpDassignvariableop_30_adam_m_attention_multi_head_attention_query_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpDassignvariableop_31_adam_v_attention_multi_head_attention_query_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpDassignvariableop_32_adam_m_attention_multi_head_attention_key_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpDassignvariableop_33_adam_v_attention_multi_head_attention_key_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpBassignvariableop_34_adam_m_attention_multi_head_attention_key_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_v_attention_multi_head_attention_key_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpFassignvariableop_36_adam_m_attention_multi_head_attention_value_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpFassignvariableop_37_adam_v_attention_multi_head_attention_value_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpDassignvariableop_38_adam_m_attention_multi_head_attention_value_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpDassignvariableop_39_adam_v_attention_multi_head_attention_value_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpQassignvariableop_40_adam_m_attention_multi_head_attention_attention_output_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpQassignvariableop_41_adam_v_attention_multi_head_attention_attention_output_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpOassignvariableop_42_adam_m_attention_multi_head_attention_attention_output_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpOassignvariableop_43_adam_v_attention_multi_head_attention_attention_output_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp>assignvariableop_44_adam_m_attention_layer_normalization_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp>assignvariableop_45_adam_v_attention_layer_normalization_gammaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp=assignvariableop_46_adam_m_attention_layer_normalization_betaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp=assignvariableop_47_adam_v_attention_layer_normalization_betaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp1assignvariableop_48_adam_m_attention_dense_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp1assignvariableop_49_adam_v_attention_dense_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp/assignvariableop_50_adam_m_attention_dense_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp/assignvariableop_51_adam_v_attention_dense_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp3assignvariableop_52_adam_m_attention_dense_1_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp3assignvariableop_53_adam_v_attention_dense_1_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp1assignvariableop_54_adam_m_attention_dense_1_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp1assignvariableop_55_adam_v_attention_dense_1_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp@assignvariableop_56_adam_m_attention_layer_normalization_1_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp@assignvariableop_57_adam_v_attention_layer_normalization_1_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp?assignvariableop_58_adam_m_attention_layer_normalization_1_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp?assignvariableop_59_adam_v_attention_layer_normalization_1_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp.assignvariableop_60_adam_m_note_outputs_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp.assignvariableop_61_adam_v_note_outputs_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp,assignvariableop_62_adam_m_note_outputs_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_v_note_outputs_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_m_duration_outputs_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp2assignvariableop_65_adam_v_duration_outputs_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp0assignvariableop_66_adam_m_duration_outputs_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp0assignvariableop_67_adam_v_duration_outputs_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpassignvariableop_68_total_2Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpassignvariableop_69_count_2Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpassignvariableop_70_total_1Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpassignvariableop_71_count_1Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOpassignvariableop_72_totalIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpassignvariableop_73_countIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_74Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_75IdentityIdentity_74:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_75Identity_75:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%J!

_user_specified_namecount:%I!

_user_specified_nametotal:'H#
!
_user_specified_name	count_1:'G#
!
_user_specified_name	total_1:'F#
!
_user_specified_name	count_2:'E#
!
_user_specified_name	total_2:<D8
6
_user_specified_nameAdam/v/duration_outputs/bias:<C8
6
_user_specified_nameAdam/m/duration_outputs/bias:>B:
8
_user_specified_name Adam/v/duration_outputs/kernel:>A:
8
_user_specified_name Adam/m/duration_outputs/kernel:8@4
2
_user_specified_nameAdam/v/note_outputs/bias:8?4
2
_user_specified_nameAdam/m/note_outputs/bias::>6
4
_user_specified_nameAdam/v/note_outputs/kernel::=6
4
_user_specified_nameAdam/m/note_outputs/kernel:K<G
E
_user_specified_name-+Adam/v/attention/layer_normalization_1/beta:K;G
E
_user_specified_name-+Adam/m/attention/layer_normalization_1/beta:L:H
F
_user_specified_name.,Adam/v/attention/layer_normalization_1/gamma:L9H
F
_user_specified_name.,Adam/m/attention/layer_normalization_1/gamma:=89
7
_user_specified_nameAdam/v/attention/dense_1/bias:=79
7
_user_specified_nameAdam/m/attention/dense_1/bias:?6;
9
_user_specified_name!Adam/v/attention/dense_1/kernel:?5;
9
_user_specified_name!Adam/m/attention/dense_1/kernel:;47
5
_user_specified_nameAdam/v/attention/dense/bias:;37
5
_user_specified_nameAdam/m/attention/dense/bias:=29
7
_user_specified_nameAdam/v/attention/dense/kernel:=19
7
_user_specified_nameAdam/m/attention/dense/kernel:I0E
C
_user_specified_name+)Adam/v/attention/layer_normalization/beta:I/E
C
_user_specified_name+)Adam/m/attention/layer_normalization/beta:J.F
D
_user_specified_name,*Adam/v/attention/layer_normalization/gamma:J-F
D
_user_specified_name,*Adam/m/attention/layer_normalization/gamma:[,W
U
_user_specified_name=;Adam/v/attention/multi_head_attention/attention_output/bias:[+W
U
_user_specified_name=;Adam/m/attention/multi_head_attention/attention_output/bias:]*Y
W
_user_specified_name?=Adam/v/attention/multi_head_attention/attention_output/kernel:])Y
W
_user_specified_name?=Adam/m/attention/multi_head_attention/attention_output/kernel:P(L
J
_user_specified_name20Adam/v/attention/multi_head_attention/value/bias:P'L
J
_user_specified_name20Adam/m/attention/multi_head_attention/value/bias:R&N
L
_user_specified_name42Adam/v/attention/multi_head_attention/value/kernel:R%N
L
_user_specified_name42Adam/m/attention/multi_head_attention/value/kernel:N$J
H
_user_specified_name0.Adam/v/attention/multi_head_attention/key/bias:N#J
H
_user_specified_name0.Adam/m/attention/multi_head_attention/key/bias:P"L
J
_user_specified_name20Adam/v/attention/multi_head_attention/key/kernel:P!L
J
_user_specified_name20Adam/m/attention/multi_head_attention/key/kernel:P L
J
_user_specified_name20Adam/v/attention/multi_head_attention/query/bias:PL
J
_user_specified_name20Adam/m/attention/multi_head_attention/query/bias:RN
L
_user_specified_name42Adam/v/attention/multi_head_attention/query/kernel:RN
L
_user_specified_name42Adam/m/attention/multi_head_attention/query/kernel:\X
V
_user_specified_name><Adam/v/token_and_position_embedding_2/embedding_2/embeddings:\X
V
_user_specified_name><Adam/m/token_and_position_embedding_2/embedding_2/embeddings:\X
V
_user_specified_name><Adam/v/token_and_position_embedding_1/embedding_1/embeddings:\X
V
_user_specified_name><Adam/m/token_and_position_embedding_1/embedding_1/embeddings:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:D@
>
_user_specified_name&$attention/layer_normalization_1/beta:EA
?
_user_specified_name'%attention/layer_normalization_1/gamma:62
0
_user_specified_nameattention/dense_1/bias:84
2
_user_specified_nameattention/dense_1/kernel:40
.
_user_specified_nameattention/dense/bias:62
0
_user_specified_nameattention/dense/kernel:B>
<
_user_specified_name$"attention/layer_normalization/beta:C?
=
_user_specified_name%#attention/layer_normalization/gamma:TP
N
_user_specified_name64attention/multi_head_attention/attention_output/bias:VR
P
_user_specified_name86attention/multi_head_attention/attention_output/kernel:IE
C
_user_specified_name+)attention/multi_head_attention/value/bias:KG
E
_user_specified_name-+attention/multi_head_attention/value/kernel:G
C
A
_user_specified_name)'attention/multi_head_attention/key/bias:I	E
C
_user_specified_name+)attention/multi_head_attention/key/kernel:IE
C
_user_specified_name+)attention/multi_head_attention/query/bias:KG
E
_user_specified_name-+attention/multi_head_attention/query/kernel:UQ
O
_user_specified_name75token_and_position_embedding_2/embedding_2/embeddings:UQ
O
_user_specified_name75token_and_position_embedding_1/embedding_1/embeddings:51
/
_user_specified_nameduration_outputs/bias:73
1
_user_specified_nameduration_outputs/kernel:1-
+
_user_specified_namenote_outputs/bias:3/
-
_user_specified_namenote_outputs/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
C__inference_attention_layer_call_and_return_conditional_losses_3560

inputsX
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�;
'dense_tensordot_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity

identity_1��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:���������d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:������������������Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :������������������Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'����������������������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*9
_output_shapes'
%:#��������������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*A
_output_shapes/
-:+���������������������������*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+����������������������������
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn��
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+����������������������������
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*A
_output_shapes/
-:+����������������������������
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:�������������������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*5
_output_shapes#
!:��������������������
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
::���
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:�������������������\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:�������������������y
add_1AddV2inputs!dropout/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:�������������������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMean	add_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
-layer_normalization/moments/SquaredDifferenceSquaredDifference	add_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_1Mul	add_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       z
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
::��_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:�������������������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������j

dense/ReluReludense/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       m
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
::��a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_1/dropout/MulMuldense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*5
_output_shapes#
!:�������������������m
dropout_1/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::���
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:�������������������^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:��������������������
add_2AddV2'layer_normalization/batchnorm/add_1:z:0#dropout_1/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:�������������������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 �
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������"!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
y
)__inference_restored_function_body_104344
x
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *a
f\RZ
X__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_1961}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104340:S O
0
_output_shapes
:������������������

_user_specified_namex
�2
�	
A__inference_model_layer_call_and_return_conditional_losses_104644
input_1
input_28
%token_and_position_embedding_1_104483:	;�8
%token_and_position_embedding_2_104486:	�(
attention_104536:��#
attention_104538:	�(
attention_104540:��#
attention_104542:	�(
attention_104544:��#
attention_104546:	�(
attention_104548:��
attention_104550:	�
attention_104552:	�
attention_104554:	�$
attention_104556:
��
attention_104558:	�$
attention_104560:
��
attention_104562:	�
attention_104564:	�
attention_104566:	�*
duration_outputs_104601:	�%
duration_outputs_104603:&
note_outputs_104637:	�;!
note_outputs_104639:;
identity

identity_1��!attention/StatefulPartitionedCall�(duration_outputs/StatefulPartitionedCall�$note_outputs/StatefulPartitionedCall�6token_and_position_embedding_1/StatefulPartitionedCall�6token_and_position_embedding_2/StatefulPartitionedCall�
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1%token_and_position_embedding_1_104483*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104334�
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_2%token_and_position_embedding_2_104486*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104344�
concatenate/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0?token_and_position_embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_104495�
!attention/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0attention_104536attention_104538attention_104540attention_104542attention_104544attention_104546attention_104548attention_104550attention_104552attention_104554attention_104556attention_104558attention_104560attention_104562attention_104564attention_104566*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:�������������������:+���������������������������*2
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104535�
(duration_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0duration_outputs_104601duration_outputs_104603*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *U
fPRN
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104600�
$note_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0note_outputs_104637note_outputs_104639*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������;*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *Q
fLRJ
H__inference_note_outputs_layer_call_and_return_conditional_losses_104636�
IdentityIdentity-note_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������;�

Identity_1Identity1duration_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp"^attention/StatefulPartitionedCall)^duration_outputs/StatefulPartitionedCall%^note_outputs/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:������������������:������������������: : : : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2T
(duration_outputs/StatefulPartitionedCall(duration_outputs/StatefulPartitionedCall2L
$note_outputs/StatefulPartitionedCall$note_outputs/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall:&"
 
_user_specified_name104639:&"
 
_user_specified_name104637:&"
 
_user_specified_name104603:&"
 
_user_specified_name104601:&"
 
_user_specified_name104566:&"
 
_user_specified_name104564:&"
 
_user_specified_name104562:&"
 
_user_specified_name104560:&"
 
_user_specified_name104558:&"
 
_user_specified_name104556:&"
 
_user_specified_name104554:&"
 
_user_specified_name104552:&"
 
_user_specified_name104550:&
"
 
_user_specified_name104548:&	"
 
_user_specified_name104546:&"
 
_user_specified_name104544:&"
 
_user_specified_name104542:&"
 
_user_specified_name104540:&"
 
_user_specified_name104538:&"
 
_user_specified_name104536:&"
 
_user_specified_name104486:&"
 
_user_specified_name104483:YU
0
_output_shapes
:������������������
!
_user_specified_name	input_2:Y U
0
_output_shapes
:������������������
!
_user_specified_name	input_1
�
�
(__inference_attention_layer_call_fn_3583

inputs
unknown:��
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:�������������������:+���������������������������*2
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *L
fGRE
C__inference_attention_layer_call_and_return_conditional_losses_3560<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 }
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+���������������������������"!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name137224:&"
 
_user_specified_name137222:&"
 
_user_specified_name137220:&"
 
_user_specified_name137218:&"
 
_user_specified_name137216:&"
 
_user_specified_name137214:&
"
 
_user_specified_name137212:&	"
 
_user_specified_name137210:&"
 
_user_specified_name137208:&"
 
_user_specified_name137206:&"
 
_user_specified_name137204:&"
 
_user_specified_name137202:&"
 
_user_specified_name137200:&"
 
_user_specified_name137198:&"
 
_user_specified_name137196:&"
 
_user_specified_name137194:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
=__inference_token_and_position_embedding_1_layer_call_fn_1909
x
unknown:	;�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *a
f\RZ
X__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_1903<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 }
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name137061:S O
0
_output_shapes
:������������������

_user_specified_namex
�
�
H__inference_note_outputs_layer_call_and_return_conditional_losses_104937

inputs4
!tensordot_readvariableop_resource:	�;-
biasadd_readvariableop_resource:;
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�;*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������;[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������;r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:;*
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������;c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������;m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������;V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�=
�
X__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_2971
x6
#embedding_2_embedding_lookup_136208:	�
identity��embedding_2/embedding_lookup�
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_136208x*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/136208*5
_output_shapes#
!:�������������������*
dtype0�
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_output_shapes#
!:��������������������
sine_position_encoding_2/ShapeShape.embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::��
,sine_position_encoding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
.sine_position_encoding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������x
.sine_position_encoding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sine_position_encoding_2/strided_sliceStridedSlice'sine_position_encoding_2/Shape:output:05sine_position_encoding_2/strided_slice/stack:output:07sine_position_encoding_2/strided_slice/stack_1:output:07sine_position_encoding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
.sine_position_encoding_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
0sine_position_encoding_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(sine_position_encoding_2/strided_slice_1StridedSlice'sine_position_encoding_2/Shape:output:07sine_position_encoding_2/strided_slice_1/stack:output:09sine_position_encoding_2/strided_slice_1/stack_1:output:09sine_position_encoding_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_2/rangeRange-sine_position_encoding_2/range/start:output:0/sine_position_encoding_2/strided_slice:output:0-sine_position_encoding_2/range/delta:output:0*#
_output_shapes
:����������
sine_position_encoding_2/CastCast'sine_position_encoding_2/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:���������f
!sine_position_encoding_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8h
&sine_position_encoding_2/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_2/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_2/range_1Range/sine_position_encoding_2/range_1/start:output:01sine_position_encoding_2/strided_slice_1:output:0/sine_position_encoding_2/range_1/delta:output:0*
_output_shapes	
:�e
#sine_position_encoding_2/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sine_position_encoding_2/floordivFloorDiv)sine_position_encoding_2/range_1:output:0,sine_position_encoding_2/floordiv/y:output:0*
T0*
_output_shapes	
:�`
sine_position_encoding_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_2/mulMul'sine_position_encoding_2/mul/x:output:0%sine_position_encoding_2/floordiv:z:0*
T0*
_output_shapes	
:�~
sine_position_encoding_2/Cast_2Cast sine_position_encoding_2/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:��
sine_position_encoding_2/Cast_3Cast1sine_position_encoding_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
 sine_position_encoding_2/truedivRealDiv#sine_position_encoding_2/Cast_2:y:0#sine_position_encoding_2/Cast_3:y:0*
T0*
_output_shapes	
:��
sine_position_encoding_2/PowPow*sine_position_encoding_2/Cast_1/x:output:0$sine_position_encoding_2/truediv:z:0*
T0*
_output_shapes	
:�i
'sine_position_encoding_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
#sine_position_encoding_2/ExpandDims
ExpandDims!sine_position_encoding_2/Cast:y:00sine_position_encoding_2/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������k
)sine_position_encoding_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
%sine_position_encoding_2/ExpandDims_1
ExpandDims sine_position_encoding_2/Pow:z:02sine_position_encoding_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	��
sine_position_encoding_2/mul_1Mul,sine_position_encoding_2/ExpandDims:output:0.sine_position_encoding_2/ExpandDims_1:output:0*
T0*(
_output_shapes
:����������h
&sine_position_encoding_2/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_2/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_2/range_2Range/sine_position_encoding_2/range_2/start:output:01sine_position_encoding_2/strided_slice_1:output:0/sine_position_encoding_2/range_2/delta:output:0*
_output_shapes	
:�`
sine_position_encoding_2/mod/yConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_2/modFloorMod)sine_position_encoding_2/range_2:output:0'sine_position_encoding_2/mod/y:output:0*
T0*
_output_shapes	
:�~
sine_position_encoding_2/Cast_4Cast sine_position_encoding_2/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:�c
sine_position_encoding_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sine_position_encoding_2/subSub'sine_position_encoding_2/sub/x:output:0#sine_position_encoding_2/Cast_4:y:0*
T0*
_output_shapes	
:�z
sine_position_encoding_2/SinSin"sine_position_encoding_2/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_2/mul_2Mul sine_position_encoding_2/Sin:y:0 sine_position_encoding_2/sub:z:0*
T0*(
_output_shapes
:����������z
sine_position_encoding_2/CosCos"sine_position_encoding_2/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_2/mul_3Mul sine_position_encoding_2/Cos:y:0#sine_position_encoding_2/Cast_4:y:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_2/addAddV2"sine_position_encoding_2/mul_2:z:0"sine_position_encoding_2/mul_3:z:0*
T0*(
_output_shapes
:�����������
$sine_position_encoding_2/BroadcastToBroadcastTo sine_position_encoding_2/add:z:0'sine_position_encoding_2/Shape:output:0*
T0*5
_output_shapes#
!:��������������������
addAddV2.embedding_2/embedding_lookup/Identity:output:0-sine_position_encoding_2/BroadcastTo:output:0*
T0*5
_output_shapes#
!:�������������������A
NoOpNoOp^embedding_2/embedding_lookup*
_output_shapes
 d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup:&"
 
_user_specified_name136208:S O
0
_output_shapes
:������������������

_user_specified_namex
�
�
)__inference_restored_function_body_104388

inputs
unknown:��
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:�������������������:+���������������������������*2
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *L
fGRE
C__inference_attention_layer_call_and_return_conditional_losses_3963}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104382:&"
 
_user_specified_name104380:&"
 
_user_specified_name104378:&"
 
_user_specified_name104376:&"
 
_user_specified_name104374:&"
 
_user_specified_name104372:&
"
 
_user_specified_name104370:&	"
 
_user_specified_name104368:&"
 
_user_specified_name104366:&"
 
_user_specified_name104364:&"
 
_user_specified_name104362:&"
 
_user_specified_name104360:&"
 
_user_specified_name104358:&"
 
_user_specified_name104356:&"
 
_user_specified_name104354:&"
 
_user_specified_name104352:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104600

inputs4
!tensordot_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
y
)__inference_restored_function_body_104334
x
unknown:	;�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *a
f\RZ
X__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_3029}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104330:S O
0
_output_shapes
:������������������

_user_specified_namex
�2
�	
A__inference_model_layer_call_and_return_conditional_losses_104701
input_1
input_28
%token_and_position_embedding_1_104648:	;�8
%token_and_position_embedding_2_104651:	�(
attention_104655:��#
attention_104657:	�(
attention_104659:��#
attention_104661:	�(
attention_104663:��#
attention_104665:	�(
attention_104667:��
attention_104669:	�
attention_104671:	�
attention_104673:	�$
attention_104675:
��
attention_104677:	�$
attention_104679:
��
attention_104681:	�
attention_104683:	�
attention_104685:	�*
duration_outputs_104689:	�%
duration_outputs_104691:&
note_outputs_104694:	�;!
note_outputs_104696:;
identity

identity_1��!attention/StatefulPartitionedCall�(duration_outputs/StatefulPartitionedCall�$note_outputs/StatefulPartitionedCall�6token_and_position_embedding_1/StatefulPartitionedCall�6token_and_position_embedding_2/StatefulPartitionedCall�
6token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1%token_and_position_embedding_1_104648*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104334�
6token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_2%token_and_position_embedding_2_104651*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104344�
concatenate/PartitionedCallPartitionedCall?token_and_position_embedding_1/StatefulPartitionedCall:output:0?token_and_position_embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_104495�
!attention/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0attention_104655attention_104657attention_104659attention_104661attention_104663attention_104665attention_104667attention_104669attention_104671attention_104673attention_104675attention_104677attention_104679attention_104681attention_104683attention_104685*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:�������������������:+���������������������������*2
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104388�
(duration_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0duration_outputs_104689duration_outputs_104691*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *U
fPRN
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104600�
$note_outputs/StatefulPartitionedCallStatefulPartitionedCall*attention/StatefulPartitionedCall:output:0note_outputs_104694note_outputs_104696*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������;*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *Q
fLRJ
H__inference_note_outputs_layer_call_and_return_conditional_losses_104636�
IdentityIdentity-note_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������;�

Identity_1Identity1duration_outputs/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp"^attention/StatefulPartitionedCall)^duration_outputs/StatefulPartitionedCall%^note_outputs/StatefulPartitionedCall7^token_and_position_embedding_1/StatefulPartitionedCall7^token_and_position_embedding_2/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:������������������:������������������: : : : : : : : : : : : : : : : : : : : : : 2F
!attention/StatefulPartitionedCall!attention/StatefulPartitionedCall2T
(duration_outputs/StatefulPartitionedCall(duration_outputs/StatefulPartitionedCall2L
$note_outputs/StatefulPartitionedCall$note_outputs/StatefulPartitionedCall2p
6token_and_position_embedding_1/StatefulPartitionedCall6token_and_position_embedding_1/StatefulPartitionedCall2p
6token_and_position_embedding_2/StatefulPartitionedCall6token_and_position_embedding_2/StatefulPartitionedCall:&"
 
_user_specified_name104696:&"
 
_user_specified_name104694:&"
 
_user_specified_name104691:&"
 
_user_specified_name104689:&"
 
_user_specified_name104685:&"
 
_user_specified_name104683:&"
 
_user_specified_name104681:&"
 
_user_specified_name104679:&"
 
_user_specified_name104677:&"
 
_user_specified_name104675:&"
 
_user_specified_name104673:&"
 
_user_specified_name104671:&"
 
_user_specified_name104669:&
"
 
_user_specified_name104667:&	"
 
_user_specified_name104665:&"
 
_user_specified_name104663:&"
 
_user_specified_name104661:&"
 
_user_specified_name104659:&"
 
_user_specified_name104657:&"
 
_user_specified_name104655:&"
 
_user_specified_name104651:&"
 
_user_specified_name104648:YU
0
_output_shapes
:������������������
!
_user_specified_name	input_2:Y U
0
_output_shapes
:������������������
!
_user_specified_name	input_1
�
�
H__inference_note_outputs_layer_call_and_return_conditional_losses_104636

inputs4
!tensordot_readvariableop_resource:	�;-
biasadd_readvariableop_resource:;
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�;*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������;[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������;r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:;*
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������;c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������;m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������;V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
)__inference_restored_function_body_104535

inputs
unknown:��
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:�������������������:+���������������������������*2
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *L
fGRE
C__inference_attention_layer_call_and_return_conditional_losses_2332}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104529:&"
 
_user_specified_name104527:&"
 
_user_specified_name104525:&"
 
_user_specified_name104523:&"
 
_user_specified_name104521:&"
 
_user_specified_name104519:&
"
 
_user_specified_name104517:&	"
 
_user_specified_name104515:&"
 
_user_specified_name104513:&"
 
_user_specified_name104511:&"
 
_user_specified_name104509:&"
 
_user_specified_name104507:&"
 
_user_specified_name104505:&"
 
_user_specified_name104503:&"
 
_user_specified_name104501:&"
 
_user_specified_name104499:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�s
�
!__inference__wrapped_model_104479
input_1
input_2>
+model_token_and_position_embedding_1_104335:	;�>
+model_token_and_position_embedding_2_104345:	�.
model_attention_104389:��)
model_attention_104391:	�.
model_attention_104393:��)
model_attention_104395:	�.
model_attention_104397:��)
model_attention_104399:	�.
model_attention_104401:��%
model_attention_104403:	�%
model_attention_104405:	�%
model_attention_104407:	�*
model_attention_104409:
��%
model_attention_104411:	�*
model_attention_104413:
��%
model_attention_104415:	�%
model_attention_104417:	�%
model_attention_104419:	�K
8model_duration_outputs_tensordot_readvariableop_resource:	�D
6model_duration_outputs_biasadd_readvariableop_resource:G
4model_note_outputs_tensordot_readvariableop_resource:	�;@
2model_note_outputs_biasadd_readvariableop_resource:;
identity

identity_1��'model/attention/StatefulPartitionedCall�-model/duration_outputs/BiasAdd/ReadVariableOp�/model/duration_outputs/Tensordot/ReadVariableOp�)model/note_outputs/BiasAdd/ReadVariableOp�+model/note_outputs/Tensordot/ReadVariableOp�<model/token_and_position_embedding_1/StatefulPartitionedCall�<model/token_and_position_embedding_2/StatefulPartitionedCall�
<model/token_and_position_embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_1+model_token_and_position_embedding_1_104335*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104334�
<model/token_and_position_embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_2+model_token_and_position_embedding_2_104345*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*#
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104344_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/concatenate/concatConcatV2Emodel/token_and_position_embedding_1/StatefulPartitionedCall:output:0Emodel/token_and_position_embedding_2/StatefulPartitionedCall:output:0&model/concatenate/concat/axis:output:0*
N*
T0*5
_output_shapes#
!:��������������������
'model/attention/StatefulPartitionedCallStatefulPartitionedCall!model/concatenate/concat:output:0model_attention_104389model_attention_104391model_attention_104393model_attention_104395model_attention_104397model_attention_104399model_attention_104401model_attention_104403model_attention_104405model_attention_104407model_attention_104409model_attention_104411model_attention_104413model_attention_104415model_attention_104417model_attention_104419*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:�������������������:+���������������������������*2
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *2
f-R+
)__inference_restored_function_body_104388�
/model/duration_outputs/Tensordot/ReadVariableOpReadVariableOp8model_duration_outputs_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0o
%model/duration_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%model/duration_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
&model/duration_outputs/Tensordot/ShapeShape0model/attention/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::��p
.model/duration_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)model/duration_outputs/Tensordot/GatherV2GatherV2/model/duration_outputs/Tensordot/Shape:output:0.model/duration_outputs/Tensordot/free:output:07model/duration_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0model/duration_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+model/duration_outputs/Tensordot/GatherV2_1GatherV2/model/duration_outputs/Tensordot/Shape:output:0.model/duration_outputs/Tensordot/axes:output:09model/duration_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&model/duration_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
%model/duration_outputs/Tensordot/ProdProd2model/duration_outputs/Tensordot/GatherV2:output:0/model/duration_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(model/duration_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
'model/duration_outputs/Tensordot/Prod_1Prod4model/duration_outputs/Tensordot/GatherV2_1:output:01model/duration_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,model/duration_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'model/duration_outputs/Tensordot/concatConcatV2.model/duration_outputs/Tensordot/free:output:0.model/duration_outputs/Tensordot/axes:output:05model/duration_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
&model/duration_outputs/Tensordot/stackPack.model/duration_outputs/Tensordot/Prod:output:00model/duration_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
*model/duration_outputs/Tensordot/transpose	Transpose0model/attention/StatefulPartitionedCall:output:00model/duration_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
(model/duration_outputs/Tensordot/ReshapeReshape.model/duration_outputs/Tensordot/transpose:y:0/model/duration_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
'model/duration_outputs/Tensordot/MatMulMatMul1model/duration_outputs/Tensordot/Reshape:output:07model/duration_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
(model/duration_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:p
.model/duration_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)model/duration_outputs/Tensordot/concat_1ConcatV22model/duration_outputs/Tensordot/GatherV2:output:01model/duration_outputs/Tensordot/Const_2:output:07model/duration_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
 model/duration_outputs/TensordotReshape1model/duration_outputs/Tensordot/MatMul:product:02model/duration_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :�������������������
-model/duration_outputs/BiasAdd/ReadVariableOpReadVariableOp6model_duration_outputs_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/duration_outputs/BiasAddBiasAdd)model/duration_outputs/Tensordot:output:05model/duration_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :�������������������
model/duration_outputs/SoftmaxSoftmax'model/duration_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :�������������������
+model/note_outputs/Tensordot/ReadVariableOpReadVariableOp4model_note_outputs_tensordot_readvariableop_resource*
_output_shapes
:	�;*
dtype0k
!model/note_outputs/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!model/note_outputs/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
"model/note_outputs/Tensordot/ShapeShape0model/attention/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::��l
*model/note_outputs/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%model/note_outputs/Tensordot/GatherV2GatherV2+model/note_outputs/Tensordot/Shape:output:0*model/note_outputs/Tensordot/free:output:03model/note_outputs/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,model/note_outputs/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'model/note_outputs/Tensordot/GatherV2_1GatherV2+model/note_outputs/Tensordot/Shape:output:0*model/note_outputs/Tensordot/axes:output:05model/note_outputs/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"model/note_outputs/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!model/note_outputs/Tensordot/ProdProd.model/note_outputs/Tensordot/GatherV2:output:0+model/note_outputs/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$model/note_outputs/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#model/note_outputs/Tensordot/Prod_1Prod0model/note_outputs/Tensordot/GatherV2_1:output:0-model/note_outputs/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(model/note_outputs/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#model/note_outputs/Tensordot/concatConcatV2*model/note_outputs/Tensordot/free:output:0*model/note_outputs/Tensordot/axes:output:01model/note_outputs/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"model/note_outputs/Tensordot/stackPack*model/note_outputs/Tensordot/Prod:output:0,model/note_outputs/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&model/note_outputs/Tensordot/transpose	Transpose0model/attention/StatefulPartitionedCall:output:0,model/note_outputs/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
$model/note_outputs/Tensordot/ReshapeReshape*model/note_outputs/Tensordot/transpose:y:0+model/note_outputs/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#model/note_outputs/Tensordot/MatMulMatMul-model/note_outputs/Tensordot/Reshape:output:03model/note_outputs/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������;n
$model/note_outputs/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:;l
*model/note_outputs/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%model/note_outputs/Tensordot/concat_1ConcatV2.model/note_outputs/Tensordot/GatherV2:output:0-model/note_outputs/Tensordot/Const_2:output:03model/note_outputs/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model/note_outputs/TensordotReshape-model/note_outputs/Tensordot/MatMul:product:0.model/note_outputs/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������;�
)model/note_outputs/BiasAdd/ReadVariableOpReadVariableOp2model_note_outputs_biasadd_readvariableop_resource*
_output_shapes
:;*
dtype0�
model/note_outputs/BiasAddBiasAdd%model/note_outputs/Tensordot:output:01model/note_outputs/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������;�
model/note_outputs/SoftmaxSoftmax#model/note_outputs/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������;�
IdentityIdentity(model/duration_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :�������������������

Identity_1Identity$model/note_outputs/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������;�
NoOpNoOp(^model/attention/StatefulPartitionedCall.^model/duration_outputs/BiasAdd/ReadVariableOp0^model/duration_outputs/Tensordot/ReadVariableOp*^model/note_outputs/BiasAdd/ReadVariableOp,^model/note_outputs/Tensordot/ReadVariableOp=^model/token_and_position_embedding_1/StatefulPartitionedCall=^model/token_and_position_embedding_2/StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:������������������:������������������: : : : : : : : : : : : : : : : : : : : : : 2R
'model/attention/StatefulPartitionedCall'model/attention/StatefulPartitionedCall2^
-model/duration_outputs/BiasAdd/ReadVariableOp-model/duration_outputs/BiasAdd/ReadVariableOp2b
/model/duration_outputs/Tensordot/ReadVariableOp/model/duration_outputs/Tensordot/ReadVariableOp2V
)model/note_outputs/BiasAdd/ReadVariableOp)model/note_outputs/BiasAdd/ReadVariableOp2Z
+model/note_outputs/Tensordot/ReadVariableOp+model/note_outputs/Tensordot/ReadVariableOp2|
<model/token_and_position_embedding_1/StatefulPartitionedCall<model/token_and_position_embedding_1/StatefulPartitionedCall2|
<model/token_and_position_embedding_2/StatefulPartitionedCall<model/token_and_position_embedding_2/StatefulPartitionedCall:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:&"
 
_user_specified_name104419:&"
 
_user_specified_name104417:&"
 
_user_specified_name104415:&"
 
_user_specified_name104413:&"
 
_user_specified_name104411:&"
 
_user_specified_name104409:&"
 
_user_specified_name104407:&"
 
_user_specified_name104405:&"
 
_user_specified_name104403:&
"
 
_user_specified_name104401:&	"
 
_user_specified_name104399:&"
 
_user_specified_name104397:&"
 
_user_specified_name104395:&"
 
_user_specified_name104393:&"
 
_user_specified_name104391:&"
 
_user_specified_name104389:&"
 
_user_specified_name104345:&"
 
_user_specified_name104335:YU
0
_output_shapes
:������������������
!
_user_specified_name	input_2:Y U
0
_output_shapes
:������������������
!
_user_specified_name	input_1
��
�
C__inference_attention_layer_call_and_return_conditional_losses_2332

inputsX
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�;
'dense_tensordot_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity

identity_1��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:���������d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:������������������Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :������������������Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'����������������������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*9
_output_shapes'
%:#��������������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*A
_output_shapes/
-:+���������������������������*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+����������������������������
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn��
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+����������������������������
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*A
_output_shapes/
-:+����������������������������
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:�������������������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout/dropout/MulMul-multi_head_attention/attention_output/add:z:0dropout/dropout/Const:output:0*
T0*5
_output_shapes#
!:��������������������
dropout/dropout/ShapeShape-multi_head_attention/attention_output/add:z:0*
T0*
_output_shapes
::���
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:�������������������\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:�������������������y
add_1AddV2inputs!dropout/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:�������������������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMean	add_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
-layer_normalization/moments/SquaredDifferenceSquaredDifference	add_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_1Mul	add_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       z
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
::��_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:�������������������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������j

dense/ReluReludense/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       m
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
::��a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_1/dropout/MulMuldense_1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*5
_output_shapes#
!:�������������������m
dropout_1/dropout/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::���
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:�������������������^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*5
_output_shapes#
!:��������������������
add_2AddV2'layer_normalization/batchnorm/add_1:z:0#dropout_1/dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:�������������������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 �
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������"!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_104884
input_1
input_2
unknown:	;�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:

unknown_19:	�;

unknown_20:;
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:������������������:������������������;*8
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� **
f%R#
!__inference__wrapped_model_104479|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :������������������;<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:������������������:������������������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104878:&"
 
_user_specified_name104876:&"
 
_user_specified_name104874:&"
 
_user_specified_name104872:&"
 
_user_specified_name104870:&"
 
_user_specified_name104868:&"
 
_user_specified_name104866:&"
 
_user_specified_name104864:&"
 
_user_specified_name104862:&"
 
_user_specified_name104860:&"
 
_user_specified_name104858:&"
 
_user_specified_name104856:&"
 
_user_specified_name104854:&
"
 
_user_specified_name104852:&	"
 
_user_specified_name104850:&"
 
_user_specified_name104848:&"
 
_user_specified_name104846:&"
 
_user_specified_name104844:&"
 
_user_specified_name104842:&"
 
_user_specified_name104840:&"
 
_user_specified_name104838:&"
 
_user_specified_name104836:YU
0
_output_shapes
:������������������
!
_user_specified_name	input_2:Y U
0
_output_shapes
:������������������
!
_user_specified_name	input_1
�
X
,__inference_concatenate_layer_call_fn_104890
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������* 
_read_only_resource_inputs
 *F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_104495n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:�������������������:�������������������:_[
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs_1:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs_0
�
�
&__inference_model_layer_call_fn_104753
input_1
input_2
unknown:	;�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:

unknown_19:	�;

unknown_20:;
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:������������������;:������������������*8
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_104644|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������;~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:������������������:������������������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104747:&"
 
_user_specified_name104745:&"
 
_user_specified_name104743:&"
 
_user_specified_name104741:&"
 
_user_specified_name104739:&"
 
_user_specified_name104737:&"
 
_user_specified_name104735:&"
 
_user_specified_name104733:&"
 
_user_specified_name104731:&"
 
_user_specified_name104729:&"
 
_user_specified_name104727:&"
 
_user_specified_name104725:&"
 
_user_specified_name104723:&
"
 
_user_specified_name104721:&	"
 
_user_specified_name104719:&"
 
_user_specified_name104717:&"
 
_user_specified_name104715:&"
 
_user_specified_name104713:&"
 
_user_specified_name104711:&"
 
_user_specified_name104709:&"
 
_user_specified_name104707:&"
 
_user_specified_name104705:YU
0
_output_shapes
:������������������
!
_user_specified_name	input_2:Y U
0
_output_shapes
:������������������
!
_user_specified_name	input_1
�=
�
X__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_1961
x6
#embedding_2_embedding_lookup_137128:	�
identity��embedding_2/embedding_lookup�
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_137128x*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/137128*5
_output_shapes#
!:�������������������*
dtype0�
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_output_shapes#
!:��������������������
sine_position_encoding_2/ShapeShape.embedding_2/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::��
,sine_position_encoding_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
.sine_position_encoding_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������x
.sine_position_encoding_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sine_position_encoding_2/strided_sliceStridedSlice'sine_position_encoding_2/Shape:output:05sine_position_encoding_2/strided_slice/stack:output:07sine_position_encoding_2/strided_slice/stack_1:output:07sine_position_encoding_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
.sine_position_encoding_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
0sine_position_encoding_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(sine_position_encoding_2/strided_slice_1StridedSlice'sine_position_encoding_2/Shape:output:07sine_position_encoding_2/strided_slice_1/stack:output:09sine_position_encoding_2/strided_slice_1/stack_1:output:09sine_position_encoding_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_2/rangeRange-sine_position_encoding_2/range/start:output:0/sine_position_encoding_2/strided_slice:output:0-sine_position_encoding_2/range/delta:output:0*#
_output_shapes
:����������
sine_position_encoding_2/CastCast'sine_position_encoding_2/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:���������f
!sine_position_encoding_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8h
&sine_position_encoding_2/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_2/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_2/range_1Range/sine_position_encoding_2/range_1/start:output:01sine_position_encoding_2/strided_slice_1:output:0/sine_position_encoding_2/range_1/delta:output:0*
_output_shapes	
:�e
#sine_position_encoding_2/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sine_position_encoding_2/floordivFloorDiv)sine_position_encoding_2/range_1:output:0,sine_position_encoding_2/floordiv/y:output:0*
T0*
_output_shapes	
:�`
sine_position_encoding_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_2/mulMul'sine_position_encoding_2/mul/x:output:0%sine_position_encoding_2/floordiv:z:0*
T0*
_output_shapes	
:�~
sine_position_encoding_2/Cast_2Cast sine_position_encoding_2/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:��
sine_position_encoding_2/Cast_3Cast1sine_position_encoding_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
 sine_position_encoding_2/truedivRealDiv#sine_position_encoding_2/Cast_2:y:0#sine_position_encoding_2/Cast_3:y:0*
T0*
_output_shapes	
:��
sine_position_encoding_2/PowPow*sine_position_encoding_2/Cast_1/x:output:0$sine_position_encoding_2/truediv:z:0*
T0*
_output_shapes	
:�i
'sine_position_encoding_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
#sine_position_encoding_2/ExpandDims
ExpandDims!sine_position_encoding_2/Cast:y:00sine_position_encoding_2/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������k
)sine_position_encoding_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
%sine_position_encoding_2/ExpandDims_1
ExpandDims sine_position_encoding_2/Pow:z:02sine_position_encoding_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	��
sine_position_encoding_2/mul_1Mul,sine_position_encoding_2/ExpandDims:output:0.sine_position_encoding_2/ExpandDims_1:output:0*
T0*(
_output_shapes
:����������h
&sine_position_encoding_2/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_2/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_2/range_2Range/sine_position_encoding_2/range_2/start:output:01sine_position_encoding_2/strided_slice_1:output:0/sine_position_encoding_2/range_2/delta:output:0*
_output_shapes	
:�`
sine_position_encoding_2/mod/yConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_2/modFloorMod)sine_position_encoding_2/range_2:output:0'sine_position_encoding_2/mod/y:output:0*
T0*
_output_shapes	
:�~
sine_position_encoding_2/Cast_4Cast sine_position_encoding_2/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:�c
sine_position_encoding_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sine_position_encoding_2/subSub'sine_position_encoding_2/sub/x:output:0#sine_position_encoding_2/Cast_4:y:0*
T0*
_output_shapes	
:�z
sine_position_encoding_2/SinSin"sine_position_encoding_2/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_2/mul_2Mul sine_position_encoding_2/Sin:y:0 sine_position_encoding_2/sub:z:0*
T0*(
_output_shapes
:����������z
sine_position_encoding_2/CosCos"sine_position_encoding_2/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_2/mul_3Mul sine_position_encoding_2/Cos:y:0#sine_position_encoding_2/Cast_4:y:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_2/addAddV2"sine_position_encoding_2/mul_2:z:0"sine_position_encoding_2/mul_3:z:0*
T0*(
_output_shapes
:�����������
$sine_position_encoding_2/BroadcastToBroadcastTo sine_position_encoding_2/add:z:0'sine_position_encoding_2/Shape:output:0*
T0*5
_output_shapes#
!:��������������������
addAddV2.embedding_2/embedding_lookup/Identity:output:0-sine_position_encoding_2/BroadcastTo:output:0*
T0*5
_output_shapes#
!:�������������������A
NoOpNoOp^embedding_2/embedding_lookup*
_output_shapes
 d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2<
embedding_2/embedding_lookupembedding_2/embedding_lookup:&"
 
_user_specified_name137128:S O
0
_output_shapes
:������������������

_user_specified_namex
�
�
-__inference_note_outputs_layer_call_fn_104906

inputs
unknown:	�;
	unknown_0:;
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������;*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *Q
fLRJ
H__inference_note_outputs_layer_call_and_return_conditional_losses_104636|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������;<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104902:&"
 
_user_specified_name104900:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
(__inference_attention_layer_call_fn_2151

inputs
unknown:��
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *b
_output_shapesP
N:�������������������:+���������������������������*2
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *L
fGRE
C__inference_attention_layer_call_and_return_conditional_losses_2128<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 }
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*A
_output_shapes/
-:+���������������������������"!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name137263:&"
 
_user_specified_name137261:&"
 
_user_specified_name137259:&"
 
_user_specified_name137257:&"
 
_user_specified_name137255:&"
 
_user_specified_name137253:&
"
 
_user_specified_name137251:&	"
 
_user_specified_name137249:&"
 
_user_specified_name137247:&"
 
_user_specified_name137245:&"
 
_user_specified_name137243:&"
 
_user_specified_name137241:&"
 
_user_specified_name137239:&"
 
_user_specified_name137237:&"
 
_user_specified_name137235:&"
 
_user_specified_name137233:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
��
�
C__inference_attention_layer_call_and_return_conditional_losses_2128

inputsX
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�;
'dense_tensordot_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity

identity_1��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:���������d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:������������������Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :������������������Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'����������������������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*9
_output_shapes'
%:#��������������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*A
_output_shapes/
-:+���������������������������*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+����������������������������
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn��
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+����������������������������
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*A
_output_shapes/
-:+����������������������������
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:�������������������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*5
_output_shapes#
!:�������������������q
add_1AddV2inputsdropout/Identity:output:0*
T0*5
_output_shapes#
!:�������������������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMean	add_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
-layer_normalization/moments/SquaredDifferenceSquaredDifference	add_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_1Mul	add_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       z
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
::��_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:�������������������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������j

dense/ReluReludense/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       m
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
::��a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������x
dropout_1/IdentityIdentitydense_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
add_2AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*5
_output_shapes#
!:�������������������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 �
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������"!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
s
G__inference_concatenate_layer_call_and_return_conditional_losses_104897
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*5
_output_shapes#
!:�������������������e
IdentityIdentityconcat:output:0*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:�������������������:�������������������:_[
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs_1:_ [
5
_output_shapes#
!:�������������������
"
_user_specified_name
inputs_0
�=
�
X__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_1903
x6
#embedding_1_embedding_lookup_136152:	;�
identity��embedding_1/embedding_lookup�
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_136152x*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/136152*5
_output_shapes#
!:�������������������*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_output_shapes#
!:��������������������
sine_position_encoding_1/ShapeShape.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::��
,sine_position_encoding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
.sine_position_encoding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������x
.sine_position_encoding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sine_position_encoding_1/strided_sliceStridedSlice'sine_position_encoding_1/Shape:output:05sine_position_encoding_1/strided_slice/stack:output:07sine_position_encoding_1/strided_slice/stack_1:output:07sine_position_encoding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
.sine_position_encoding_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
0sine_position_encoding_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: z
0sine_position_encoding_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(sine_position_encoding_1/strided_slice_1StridedSlice'sine_position_encoding_1/Shape:output:07sine_position_encoding_1/strided_slice_1/stack:output:09sine_position_encoding_1/strided_slice_1/stack_1:output:09sine_position_encoding_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sine_position_encoding_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sine_position_encoding_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_1/rangeRange-sine_position_encoding_1/range/start:output:0/sine_position_encoding_1/strided_slice:output:0-sine_position_encoding_1/range/delta:output:0*#
_output_shapes
:����������
sine_position_encoding_1/CastCast'sine_position_encoding_1/range:output:0*

DstT0*

SrcT0*#
_output_shapes
:���������f
!sine_position_encoding_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8h
&sine_position_encoding_1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_1/range_1Range/sine_position_encoding_1/range_1/start:output:01sine_position_encoding_1/strided_slice_1:output:0/sine_position_encoding_1/range_1/delta:output:0*
_output_shapes	
:�e
#sine_position_encoding_1/floordiv/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sine_position_encoding_1/floordivFloorDiv)sine_position_encoding_1/range_1:output:0,sine_position_encoding_1/floordiv/y:output:0*
T0*
_output_shapes	
:�`
sine_position_encoding_1/mul/xConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_1/mulMul'sine_position_encoding_1/mul/x:output:0%sine_position_encoding_1/floordiv:z:0*
T0*
_output_shapes	
:�~
sine_position_encoding_1/Cast_2Cast sine_position_encoding_1/mul:z:0*

DstT0*

SrcT0*
_output_shapes	
:��
sine_position_encoding_1/Cast_3Cast1sine_position_encoding_1/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
 sine_position_encoding_1/truedivRealDiv#sine_position_encoding_1/Cast_2:y:0#sine_position_encoding_1/Cast_3:y:0*
T0*
_output_shapes	
:��
sine_position_encoding_1/PowPow*sine_position_encoding_1/Cast_1/x:output:0$sine_position_encoding_1/truediv:z:0*
T0*
_output_shapes	
:�i
'sine_position_encoding_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
#sine_position_encoding_1/ExpandDims
ExpandDims!sine_position_encoding_1/Cast:y:00sine_position_encoding_1/ExpandDims/dim:output:0*
T0*'
_output_shapes
:���������k
)sine_position_encoding_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
%sine_position_encoding_1/ExpandDims_1
ExpandDims sine_position_encoding_1/Pow:z:02sine_position_encoding_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	��
sine_position_encoding_1/mul_1Mul,sine_position_encoding_1/ExpandDims:output:0.sine_position_encoding_1/ExpandDims_1:output:0*
T0*(
_output_shapes
:����������h
&sine_position_encoding_1/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : h
&sine_position_encoding_1/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
 sine_position_encoding_1/range_2Range/sine_position_encoding_1/range_2/start:output:01sine_position_encoding_1/strided_slice_1:output:0/sine_position_encoding_1/range_2/delta:output:0*
_output_shapes	
:�`
sine_position_encoding_1/mod/yConst*
_output_shapes
: *
dtype0*
value	B :�
sine_position_encoding_1/modFloorMod)sine_position_encoding_1/range_2:output:0'sine_position_encoding_1/mod/y:output:0*
T0*
_output_shapes	
:�~
sine_position_encoding_1/Cast_4Cast sine_position_encoding_1/mod:z:0*

DstT0*

SrcT0*
_output_shapes	
:�c
sine_position_encoding_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sine_position_encoding_1/subSub'sine_position_encoding_1/sub/x:output:0#sine_position_encoding_1/Cast_4:y:0*
T0*
_output_shapes	
:�z
sine_position_encoding_1/SinSin"sine_position_encoding_1/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_1/mul_2Mul sine_position_encoding_1/Sin:y:0 sine_position_encoding_1/sub:z:0*
T0*(
_output_shapes
:����������z
sine_position_encoding_1/CosCos"sine_position_encoding_1/mul_1:z:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_1/mul_3Mul sine_position_encoding_1/Cos:y:0#sine_position_encoding_1/Cast_4:y:0*
T0*(
_output_shapes
:�����������
sine_position_encoding_1/addAddV2"sine_position_encoding_1/mul_2:z:0"sine_position_encoding_1/mul_3:z:0*
T0*(
_output_shapes
:�����������
$sine_position_encoding_1/BroadcastToBroadcastTo sine_position_encoding_1/add:z:0'sine_position_encoding_1/Shape:output:0*
T0*5
_output_shapes#
!:��������������������
addAddV2.embedding_1/embedding_lookup/Identity:output:0-sine_position_encoding_1/BroadcastTo:output:0*
T0*5
_output_shapes#
!:�������������������A
NoOpNoOp^embedding_1/embedding_lookup*
_output_shapes
 d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:�������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:&"
 
_user_specified_name136152:S O
0
_output_shapes
:������������������

_user_specified_namex
��
�
C__inference_attention_layer_call_and_return_conditional_losses_3963

inputsX
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�;
'dense_tensordot_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity

identity_1��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :y
rangeRangerange/start:output:0strided_slice_1:output:0range/delta:output:0*#
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicerange:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskO
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
range_1Rangerange_1/start:output:0strided_slice_1:output:0range_1/delta:output:0*#
_output_shapes
:���������d
subSubrange_1:output:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������]
addAddV2sub:z:0strided_slice_1:output:0*
T0*#
_output_shapes
:���������z
GreaterEqualGreaterEqualstrided_slice_2:output:0add:z:0*
T0*0
_output_shapes
:������������������Q
Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackReshape/shape/0:output:0strided_slice_1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:{
ReshapeReshapeGreaterEqual:z:0Reshape/shape:output:0*
T0
*4
_output_shapes"
 :������������������Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������n

ExpandDims
ExpandDimsstrided_slice:output:0ExpandDims/dim:output:0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : {
concatConcatV2ExpandDims:output:0Const:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:w
TileTileReshape:output:0concat:output:0*
T0
*=
_output_shapes+
):'����������������������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#��������������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*9
_output_shapes'
%:#��������������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*A
_output_shapes/
-:+���������������������������*
equationaecd,abcd->acben
#multi_head_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
multi_head_attention/ExpandDims
ExpandDimsTile:output:0,multi_head_attention/ExpandDims/dim:output:0*
T0
*A
_output_shapes/
-:+����������������������������
!multi_head_attention/softmax/CastCast(multi_head_attention/ExpandDims:output:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
 multi_head_attention/softmax/subSub+multi_head_attention/softmax/sub/x:output:0%multi_head_attention/softmax/Cast:y:0*
T0*A
_output_shapes/
-:+���������������������������g
"multi_head_attention/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn��
 multi_head_attention/softmax/mulMul$multi_head_attention/softmax/sub:z:0+multi_head_attention/softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+����������������������������
 multi_head_attention/softmax/addAddV2+multi_head_attention/einsum/Einsum:output:0$multi_head_attention/softmax/mul:z:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/softmax/SoftmaxSoftmax$multi_head_attention/softmax/add:z:0*
T0*A
_output_shapes/
-:+����������������������������
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+����������������������������
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*9
_output_shapes'
%:#�������������������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*5
_output_shapes#
!:�������������������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*5
_output_shapes#
!:�������������������q
add_1AddV2inputsdropout/Identity:output:0*
T0*5
_output_shapes#
!:�������������������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMean	add_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
-layer_normalization/moments/SquaredDifferenceSquaredDifference	add_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_1Mul	add_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       z
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
::��_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:�������������������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������j

dense/ReluReludense/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       m
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
::��a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������x
dropout_1/IdentityIdentitydense_1/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
add_2AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*5
_output_shapes#
!:�������������������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*4
_output_shapes"
 :�������������������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*5
_output_shapes#
!:��������������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :������������������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :�������������������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*4
_output_shapes"
 :�������������������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_1Mul	add_2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*5
_output_shapes#
!:��������������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*5
_output_shapes#
!:��������������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*
_output_shapes
 �
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:��������������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������"!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�������������������: : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_104805
input_1
input_2
unknown:	;�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:

unknown_19:	�;

unknown_20:;
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *T
_output_shapesB
@:������������������;:������������������*8
_read_only_resource_inputs
	
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_104701|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������;~

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*w
_input_shapesf
d:������������������:������������������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104799:&"
 
_user_specified_name104797:&"
 
_user_specified_name104795:&"
 
_user_specified_name104793:&"
 
_user_specified_name104791:&"
 
_user_specified_name104789:&"
 
_user_specified_name104787:&"
 
_user_specified_name104785:&"
 
_user_specified_name104783:&"
 
_user_specified_name104781:&"
 
_user_specified_name104779:&"
 
_user_specified_name104777:&"
 
_user_specified_name104775:&
"
 
_user_specified_name104773:&	"
 
_user_specified_name104771:&"
 
_user_specified_name104769:&"
 
_user_specified_name104767:&"
 
_user_specified_name104765:&"
 
_user_specified_name104763:&"
 
_user_specified_name104761:&"
 
_user_specified_name104759:&"
 
_user_specified_name104757:YU
0
_output_shapes
:������������������
!
_user_specified_name	input_2:Y U
0
_output_shapes
:������������������
!
_user_specified_name	input_1
��
�N
__inference__traced_save_105445
file_prefix=
*read_disablecopyonread_note_outputs_kernel:	�;8
*read_1_disablecopyonread_note_outputs_bias:;C
0read_2_disablecopyonread_duration_outputs_kernel:	�<
.read_3_disablecopyonread_duration_outputs_bias:a
Nread_4_disablecopyonread_token_and_position_embedding_1_embedding_1_embeddings:	;�a
Nread_5_disablecopyonread_token_and_position_embedding_2_embedding_2_embeddings:	�\
Dread_6_disablecopyonread_attention_multi_head_attention_query_kernel:��U
Bread_7_disablecopyonread_attention_multi_head_attention_query_bias:	�Z
Bread_8_disablecopyonread_attention_multi_head_attention_key_kernel:��S
@read_9_disablecopyonread_attention_multi_head_attention_key_bias:	�]
Eread_10_disablecopyonread_attention_multi_head_attention_value_kernel:��V
Cread_11_disablecopyonread_attention_multi_head_attention_value_bias:	�h
Pread_12_disablecopyonread_attention_multi_head_attention_attention_output_kernel:��]
Nread_13_disablecopyonread_attention_multi_head_attention_attention_output_bias:	�L
=read_14_disablecopyonread_attention_layer_normalization_gamma:	�K
<read_15_disablecopyonread_attention_layer_normalization_beta:	�D
0read_16_disablecopyonread_attention_dense_kernel:
��=
.read_17_disablecopyonread_attention_dense_bias:	�F
2read_18_disablecopyonread_attention_dense_1_kernel:
��?
0read_19_disablecopyonread_attention_dense_1_bias:	�N
?read_20_disablecopyonread_attention_layer_normalization_1_gamma:	�M
>read_21_disablecopyonread_attention_layer_normalization_1_beta:	�-
#read_22_disablecopyonread_iteration:	 1
'read_23_disablecopyonread_learning_rate: i
Vread_24_disablecopyonread_adam_m_token_and_position_embedding_1_embedding_1_embeddings:	;�i
Vread_25_disablecopyonread_adam_v_token_and_position_embedding_1_embedding_1_embeddings:	;�i
Vread_26_disablecopyonread_adam_m_token_and_position_embedding_2_embedding_2_embeddings:	�i
Vread_27_disablecopyonread_adam_v_token_and_position_embedding_2_embedding_2_embeddings:	�d
Lread_28_disablecopyonread_adam_m_attention_multi_head_attention_query_kernel:��d
Lread_29_disablecopyonread_adam_v_attention_multi_head_attention_query_kernel:��]
Jread_30_disablecopyonread_adam_m_attention_multi_head_attention_query_bias:	�]
Jread_31_disablecopyonread_adam_v_attention_multi_head_attention_query_bias:	�b
Jread_32_disablecopyonread_adam_m_attention_multi_head_attention_key_kernel:��b
Jread_33_disablecopyonread_adam_v_attention_multi_head_attention_key_kernel:��[
Hread_34_disablecopyonread_adam_m_attention_multi_head_attention_key_bias:	�[
Hread_35_disablecopyonread_adam_v_attention_multi_head_attention_key_bias:	�d
Lread_36_disablecopyonread_adam_m_attention_multi_head_attention_value_kernel:��d
Lread_37_disablecopyonread_adam_v_attention_multi_head_attention_value_kernel:��]
Jread_38_disablecopyonread_adam_m_attention_multi_head_attention_value_bias:	�]
Jread_39_disablecopyonread_adam_v_attention_multi_head_attention_value_bias:	�o
Wread_40_disablecopyonread_adam_m_attention_multi_head_attention_attention_output_kernel:��o
Wread_41_disablecopyonread_adam_v_attention_multi_head_attention_attention_output_kernel:��d
Uread_42_disablecopyonread_adam_m_attention_multi_head_attention_attention_output_bias:	�d
Uread_43_disablecopyonread_adam_v_attention_multi_head_attention_attention_output_bias:	�S
Dread_44_disablecopyonread_adam_m_attention_layer_normalization_gamma:	�S
Dread_45_disablecopyonread_adam_v_attention_layer_normalization_gamma:	�R
Cread_46_disablecopyonread_adam_m_attention_layer_normalization_beta:	�R
Cread_47_disablecopyonread_adam_v_attention_layer_normalization_beta:	�K
7read_48_disablecopyonread_adam_m_attention_dense_kernel:
��K
7read_49_disablecopyonread_adam_v_attention_dense_kernel:
��D
5read_50_disablecopyonread_adam_m_attention_dense_bias:	�D
5read_51_disablecopyonread_adam_v_attention_dense_bias:	�M
9read_52_disablecopyonread_adam_m_attention_dense_1_kernel:
��M
9read_53_disablecopyonread_adam_v_attention_dense_1_kernel:
��F
7read_54_disablecopyonread_adam_m_attention_dense_1_bias:	�F
7read_55_disablecopyonread_adam_v_attention_dense_1_bias:	�U
Fread_56_disablecopyonread_adam_m_attention_layer_normalization_1_gamma:	�U
Fread_57_disablecopyonread_adam_v_attention_layer_normalization_1_gamma:	�T
Eread_58_disablecopyonread_adam_m_attention_layer_normalization_1_beta:	�T
Eread_59_disablecopyonread_adam_v_attention_layer_normalization_1_beta:	�G
4read_60_disablecopyonread_adam_m_note_outputs_kernel:	�;G
4read_61_disablecopyonread_adam_v_note_outputs_kernel:	�;@
2read_62_disablecopyonread_adam_m_note_outputs_bias:;@
2read_63_disablecopyonread_adam_v_note_outputs_bias:;K
8read_64_disablecopyonread_adam_m_duration_outputs_kernel:	�K
8read_65_disablecopyonread_adam_v_duration_outputs_kernel:	�D
6read_66_disablecopyonread_adam_m_duration_outputs_bias:D
6read_67_disablecopyonread_adam_v_duration_outputs_bias:+
!read_68_disablecopyonread_total_2: +
!read_69_disablecopyonread_count_2: +
!read_70_disablecopyonread_total_1: +
!read_71_disablecopyonread_count_1: )
read_72_disablecopyonread_total: )
read_73_disablecopyonread_count: 
savev2_const
identity_149��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: |
Read/DisableCopyOnReadDisableCopyOnRead*read_disablecopyonread_note_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp*read_disablecopyonread_note_outputs_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�;*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�;b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�;~
Read_1/DisableCopyOnReadDisableCopyOnRead*read_1_disablecopyonread_note_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp*read_1_disablecopyonread_note_outputs_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:;*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:;_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:;�
Read_2/DisableCopyOnReadDisableCopyOnRead0read_2_disablecopyonread_duration_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp0read_2_disablecopyonread_duration_outputs_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_3/DisableCopyOnReadDisableCopyOnRead.read_3_disablecopyonread_duration_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp.read_3_disablecopyonread_duration_outputs_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnReadNread_4_disablecopyonread_token_and_position_embedding_1_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOpNread_4_disablecopyonread_token_and_position_embedding_1_embedding_1_embeddings^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	;�*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	;�d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	;��
Read_5/DisableCopyOnReadDisableCopyOnReadNread_5_disablecopyonread_token_and_position_embedding_2_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOpNread_5_disablecopyonread_token_and_position_embedding_2_embedding_2_embeddings^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_6/DisableCopyOnReadDisableCopyOnReadDread_6_disablecopyonread_attention_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOpDread_6_disablecopyonread_attention_multi_head_attention_query_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0t
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_7/DisableCopyOnReadDisableCopyOnReadBread_7_disablecopyonread_attention_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOpBread_7_disablecopyonread_attention_multi_head_attention_query_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_8/DisableCopyOnReadDisableCopyOnReadBread_8_disablecopyonread_attention_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpBread_8_disablecopyonread_attention_multi_head_attention_key_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0t
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_9/DisableCopyOnReadDisableCopyOnRead@read_9_disablecopyonread_attention_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp@read_9_disablecopyonread_attention_multi_head_attention_key_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_10/DisableCopyOnReadDisableCopyOnReadEread_10_disablecopyonread_attention_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpEread_10_disablecopyonread_attention_multi_head_attention_value_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_11/DisableCopyOnReadDisableCopyOnReadCread_11_disablecopyonread_attention_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpCread_11_disablecopyonread_attention_multi_head_attention_value_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_12/DisableCopyOnReadDisableCopyOnReadPread_12_disablecopyonread_attention_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpPread_12_disablecopyonread_attention_multi_head_attention_attention_output_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_13/DisableCopyOnReadDisableCopyOnReadNread_13_disablecopyonread_attention_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpNread_13_disablecopyonread_attention_multi_head_attention_attention_output_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_14/DisableCopyOnReadDisableCopyOnRead=read_14_disablecopyonread_attention_layer_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp=read_14_disablecopyonread_attention_layer_normalization_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_15/DisableCopyOnReadDisableCopyOnRead<read_15_disablecopyonread_attention_layer_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp<read_15_disablecopyonread_attention_layer_normalization_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_16/DisableCopyOnReadDisableCopyOnRead0read_16_disablecopyonread_attention_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp0read_16_disablecopyonread_attention_dense_kernel^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_attention_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_attention_dense_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_18/DisableCopyOnReadDisableCopyOnRead2read_18_disablecopyonread_attention_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp2read_18_disablecopyonread_attention_dense_1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_attention_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_attention_dense_1_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_20/DisableCopyOnReadDisableCopyOnRead?read_20_disablecopyonread_attention_layer_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp?read_20_disablecopyonread_attention_layer_normalization_1_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_21/DisableCopyOnReadDisableCopyOnRead>read_21_disablecopyonread_attention_layer_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp>read_21_disablecopyonread_attention_layer_normalization_1_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:�x
Read_22/DisableCopyOnReadDisableCopyOnRead#read_22_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp#read_22_disablecopyonread_iteration^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_23/DisableCopyOnReadDisableCopyOnRead'read_23_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp'read_23_disablecopyonread_learning_rate^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_24/DisableCopyOnReadDisableCopyOnReadVread_24_disablecopyonread_adam_m_token_and_position_embedding_1_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOpVread_24_disablecopyonread_adam_m_token_and_position_embedding_1_embedding_1_embeddings^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	;�*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	;�f
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	;��
Read_25/DisableCopyOnReadDisableCopyOnReadVread_25_disablecopyonread_adam_v_token_and_position_embedding_1_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOpVread_25_disablecopyonread_adam_v_token_and_position_embedding_1_embedding_1_embeddings^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	;�*
dtype0p
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	;�f
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:	;��
Read_26/DisableCopyOnReadDisableCopyOnReadVread_26_disablecopyonread_adam_m_token_and_position_embedding_2_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOpVread_26_disablecopyonread_adam_m_token_and_position_embedding_2_embedding_2_embeddings^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_27/DisableCopyOnReadDisableCopyOnReadVread_27_disablecopyonread_adam_v_token_and_position_embedding_2_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOpVread_27_disablecopyonread_adam_v_token_and_position_embedding_2_embedding_2_embeddings^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_28/DisableCopyOnReadDisableCopyOnReadLread_28_disablecopyonread_adam_m_attention_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpLread_28_disablecopyonread_adam_m_attention_multi_head_attention_query_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_29/DisableCopyOnReadDisableCopyOnReadLread_29_disablecopyonread_adam_v_attention_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpLread_29_disablecopyonread_adam_v_attention_multi_head_attention_query_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_30/DisableCopyOnReadDisableCopyOnReadJread_30_disablecopyonread_adam_m_attention_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOpJread_30_disablecopyonread_adam_m_attention_multi_head_attention_query_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_31/DisableCopyOnReadDisableCopyOnReadJread_31_disablecopyonread_adam_v_attention_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOpJread_31_disablecopyonread_adam_v_attention_multi_head_attention_query_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_32/DisableCopyOnReadDisableCopyOnReadJread_32_disablecopyonread_adam_m_attention_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOpJread_32_disablecopyonread_adam_m_attention_multi_head_attention_key_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_33/DisableCopyOnReadDisableCopyOnReadJread_33_disablecopyonread_adam_v_attention_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOpJread_33_disablecopyonread_adam_v_attention_multi_head_attention_key_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_34/DisableCopyOnReadDisableCopyOnReadHread_34_disablecopyonread_adam_m_attention_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOpHread_34_disablecopyonread_adam_m_attention_multi_head_attention_key_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_35/DisableCopyOnReadDisableCopyOnReadHread_35_disablecopyonread_adam_v_attention_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOpHread_35_disablecopyonread_adam_v_attention_multi_head_attention_key_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_36/DisableCopyOnReadDisableCopyOnReadLread_36_disablecopyonread_adam_m_attention_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOpLread_36_disablecopyonread_adam_m_attention_multi_head_attention_value_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_37/DisableCopyOnReadDisableCopyOnReadLread_37_disablecopyonread_adam_v_attention_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOpLread_37_disablecopyonread_adam_v_attention_multi_head_attention_value_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_38/DisableCopyOnReadDisableCopyOnReadJread_38_disablecopyonread_adam_m_attention_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOpJread_38_disablecopyonread_adam_m_attention_multi_head_attention_value_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_39/DisableCopyOnReadDisableCopyOnReadJread_39_disablecopyonread_adam_v_attention_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOpJread_39_disablecopyonread_adam_v_attention_multi_head_attention_value_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_40/DisableCopyOnReadDisableCopyOnReadWread_40_disablecopyonread_adam_m_attention_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOpWread_40_disablecopyonread_adam_m_attention_multi_head_attention_attention_output_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_41/DisableCopyOnReadDisableCopyOnReadWread_41_disablecopyonread_adam_v_attention_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOpWread_41_disablecopyonread_adam_v_attention_multi_head_attention_attention_output_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:��*
dtype0u
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:��k
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*$
_output_shapes
:���
Read_42/DisableCopyOnReadDisableCopyOnReadUread_42_disablecopyonread_adam_m_attention_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOpUread_42_disablecopyonread_adam_m_attention_multi_head_attention_attention_output_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_43/DisableCopyOnReadDisableCopyOnReadUread_43_disablecopyonread_adam_v_attention_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOpUread_43_disablecopyonread_adam_v_attention_multi_head_attention_attention_output_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_44/DisableCopyOnReadDisableCopyOnReadDread_44_disablecopyonread_adam_m_attention_layer_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOpDread_44_disablecopyonread_adam_m_attention_layer_normalization_gamma^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_45/DisableCopyOnReadDisableCopyOnReadDread_45_disablecopyonread_adam_v_attention_layer_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOpDread_45_disablecopyonread_adam_v_attention_layer_normalization_gamma^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_46/DisableCopyOnReadDisableCopyOnReadCread_46_disablecopyonread_adam_m_attention_layer_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOpCread_46_disablecopyonread_adam_m_attention_layer_normalization_beta^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_47/DisableCopyOnReadDisableCopyOnReadCread_47_disablecopyonread_adam_v_attention_layer_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOpCread_47_disablecopyonread_adam_v_attention_layer_normalization_beta^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_48/DisableCopyOnReadDisableCopyOnRead7read_48_disablecopyonread_adam_m_attention_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp7read_48_disablecopyonread_adam_m_attention_dense_kernel^Read_48/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_49/DisableCopyOnReadDisableCopyOnRead7read_49_disablecopyonread_adam_v_attention_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp7read_49_disablecopyonread_adam_v_attention_dense_kernel^Read_49/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_50/DisableCopyOnReadDisableCopyOnRead5read_50_disablecopyonread_adam_m_attention_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp5read_50_disablecopyonread_adam_m_attention_dense_bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_51/DisableCopyOnReadDisableCopyOnRead5read_51_disablecopyonread_adam_v_attention_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp5read_51_disablecopyonread_adam_v_attention_dense_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_52/DisableCopyOnReadDisableCopyOnRead9read_52_disablecopyonread_adam_m_attention_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp9read_52_disablecopyonread_adam_m_attention_dense_1_kernel^Read_52/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_53/DisableCopyOnReadDisableCopyOnRead9read_53_disablecopyonread_adam_v_attention_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp9read_53_disablecopyonread_adam_v_attention_dense_1_kernel^Read_53/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_54/DisableCopyOnReadDisableCopyOnRead7read_54_disablecopyonread_adam_m_attention_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp7read_54_disablecopyonread_adam_m_attention_dense_1_bias^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_55/DisableCopyOnReadDisableCopyOnRead7read_55_disablecopyonread_adam_v_attention_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp7read_55_disablecopyonread_adam_v_attention_dense_1_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_56/DisableCopyOnReadDisableCopyOnReadFread_56_disablecopyonread_adam_m_attention_layer_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOpFread_56_disablecopyonread_adam_m_attention_layer_normalization_1_gamma^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_57/DisableCopyOnReadDisableCopyOnReadFread_57_disablecopyonread_adam_v_attention_layer_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOpFread_57_disablecopyonread_adam_v_attention_layer_normalization_1_gamma^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_58/DisableCopyOnReadDisableCopyOnReadEread_58_disablecopyonread_adam_m_attention_layer_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOpEread_58_disablecopyonread_adam_m_attention_layer_normalization_1_beta^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_59/DisableCopyOnReadDisableCopyOnReadEread_59_disablecopyonread_adam_v_attention_layer_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOpEread_59_disablecopyonread_adam_v_attention_layer_normalization_1_beta^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_60/DisableCopyOnReadDisableCopyOnRead4read_60_disablecopyonread_adam_m_note_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp4read_60_disablecopyonread_adam_m_note_outputs_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�;*
dtype0q
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�;h
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:	�;�
Read_61/DisableCopyOnReadDisableCopyOnRead4read_61_disablecopyonread_adam_v_note_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp4read_61_disablecopyonread_adam_v_note_outputs_kernel^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�;*
dtype0q
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�;h
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:	�;�
Read_62/DisableCopyOnReadDisableCopyOnRead2read_62_disablecopyonread_adam_m_note_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp2read_62_disablecopyonread_adam_m_note_outputs_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:;*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:;c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:;�
Read_63/DisableCopyOnReadDisableCopyOnRead2read_63_disablecopyonread_adam_v_note_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp2read_63_disablecopyonread_adam_v_note_outputs_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:;*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:;c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:;�
Read_64/DisableCopyOnReadDisableCopyOnRead8read_64_disablecopyonread_adam_m_duration_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp8read_64_disablecopyonread_adam_m_duration_outputs_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_65/DisableCopyOnReadDisableCopyOnRead8read_65_disablecopyonread_adam_v_duration_outputs_kernel"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp8read_65_disablecopyonread_adam_v_duration_outputs_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0q
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_66/DisableCopyOnReadDisableCopyOnRead6read_66_disablecopyonread_adam_m_duration_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp6read_66_disablecopyonread_adam_m_duration_outputs_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_67/DisableCopyOnReadDisableCopyOnRead6read_67_disablecopyonread_adam_v_duration_outputs_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp6read_67_disablecopyonread_adam_v_duration_outputs_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_68/DisableCopyOnReadDisableCopyOnRead!read_68_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp!read_68_disablecopyonread_total_2^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_69/DisableCopyOnReadDisableCopyOnRead!read_69_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp!read_69_disablecopyonread_count_2^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_70/DisableCopyOnReadDisableCopyOnRead!read_70_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp!read_70_disablecopyonread_total_1^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_71/DisableCopyOnReadDisableCopyOnRead!read_71_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp!read_71_disablecopyonread_count_1^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_72/DisableCopyOnReadDisableCopyOnReadread_72_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOpread_72_disablecopyonread_total^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_73/DisableCopyOnReadDisableCopyOnReadread_73_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOpread_73_disablecopyonread_count^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*�
value�B�KB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*�
value�B�KB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *Y
dtypesO
M2K	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_148Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_149IdentityIdentity_148:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_149Identity_149:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=K9

_output_shapes
: 

_user_specified_nameConst:%J!

_user_specified_namecount:%I!

_user_specified_nametotal:'H#
!
_user_specified_name	count_1:'G#
!
_user_specified_name	total_1:'F#
!
_user_specified_name	count_2:'E#
!
_user_specified_name	total_2:<D8
6
_user_specified_nameAdam/v/duration_outputs/bias:<C8
6
_user_specified_nameAdam/m/duration_outputs/bias:>B:
8
_user_specified_name Adam/v/duration_outputs/kernel:>A:
8
_user_specified_name Adam/m/duration_outputs/kernel:8@4
2
_user_specified_nameAdam/v/note_outputs/bias:8?4
2
_user_specified_nameAdam/m/note_outputs/bias::>6
4
_user_specified_nameAdam/v/note_outputs/kernel::=6
4
_user_specified_nameAdam/m/note_outputs/kernel:K<G
E
_user_specified_name-+Adam/v/attention/layer_normalization_1/beta:K;G
E
_user_specified_name-+Adam/m/attention/layer_normalization_1/beta:L:H
F
_user_specified_name.,Adam/v/attention/layer_normalization_1/gamma:L9H
F
_user_specified_name.,Adam/m/attention/layer_normalization_1/gamma:=89
7
_user_specified_nameAdam/v/attention/dense_1/bias:=79
7
_user_specified_nameAdam/m/attention/dense_1/bias:?6;
9
_user_specified_name!Adam/v/attention/dense_1/kernel:?5;
9
_user_specified_name!Adam/m/attention/dense_1/kernel:;47
5
_user_specified_nameAdam/v/attention/dense/bias:;37
5
_user_specified_nameAdam/m/attention/dense/bias:=29
7
_user_specified_nameAdam/v/attention/dense/kernel:=19
7
_user_specified_nameAdam/m/attention/dense/kernel:I0E
C
_user_specified_name+)Adam/v/attention/layer_normalization/beta:I/E
C
_user_specified_name+)Adam/m/attention/layer_normalization/beta:J.F
D
_user_specified_name,*Adam/v/attention/layer_normalization/gamma:J-F
D
_user_specified_name,*Adam/m/attention/layer_normalization/gamma:[,W
U
_user_specified_name=;Adam/v/attention/multi_head_attention/attention_output/bias:[+W
U
_user_specified_name=;Adam/m/attention/multi_head_attention/attention_output/bias:]*Y
W
_user_specified_name?=Adam/v/attention/multi_head_attention/attention_output/kernel:])Y
W
_user_specified_name?=Adam/m/attention/multi_head_attention/attention_output/kernel:P(L
J
_user_specified_name20Adam/v/attention/multi_head_attention/value/bias:P'L
J
_user_specified_name20Adam/m/attention/multi_head_attention/value/bias:R&N
L
_user_specified_name42Adam/v/attention/multi_head_attention/value/kernel:R%N
L
_user_specified_name42Adam/m/attention/multi_head_attention/value/kernel:N$J
H
_user_specified_name0.Adam/v/attention/multi_head_attention/key/bias:N#J
H
_user_specified_name0.Adam/m/attention/multi_head_attention/key/bias:P"L
J
_user_specified_name20Adam/v/attention/multi_head_attention/key/kernel:P!L
J
_user_specified_name20Adam/m/attention/multi_head_attention/key/kernel:P L
J
_user_specified_name20Adam/v/attention/multi_head_attention/query/bias:PL
J
_user_specified_name20Adam/m/attention/multi_head_attention/query/bias:RN
L
_user_specified_name42Adam/v/attention/multi_head_attention/query/kernel:RN
L
_user_specified_name42Adam/m/attention/multi_head_attention/query/kernel:\X
V
_user_specified_name><Adam/v/token_and_position_embedding_2/embedding_2/embeddings:\X
V
_user_specified_name><Adam/m/token_and_position_embedding_2/embedding_2/embeddings:\X
V
_user_specified_name><Adam/v/token_and_position_embedding_1/embedding_1/embeddings:\X
V
_user_specified_name><Adam/m/token_and_position_embedding_1/embedding_1/embeddings:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:D@
>
_user_specified_name&$attention/layer_normalization_1/beta:EA
?
_user_specified_name'%attention/layer_normalization_1/gamma:62
0
_user_specified_nameattention/dense_1/bias:84
2
_user_specified_nameattention/dense_1/kernel:40
.
_user_specified_nameattention/dense/bias:62
0
_user_specified_nameattention/dense/kernel:B>
<
_user_specified_name$"attention/layer_normalization/beta:C?
=
_user_specified_name%#attention/layer_normalization/gamma:TP
N
_user_specified_name64attention/multi_head_attention/attention_output/bias:VR
P
_user_specified_name86attention/multi_head_attention/attention_output/kernel:IE
C
_user_specified_name+)attention/multi_head_attention/value/bias:KG
E
_user_specified_name-+attention/multi_head_attention/value/kernel:G
C
A
_user_specified_name)'attention/multi_head_attention/key/bias:I	E
C
_user_specified_name+)attention/multi_head_attention/key/kernel:IE
C
_user_specified_name+)attention/multi_head_attention/query/bias:KG
E
_user_specified_name-+attention/multi_head_attention/query/kernel:UQ
O
_user_specified_name75token_and_position_embedding_2/embedding_2/embeddings:UQ
O
_user_specified_name75token_and_position_embedding_1/embedding_1/embeddings:51
/
_user_specified_nameduration_outputs/bias:73
1
_user_specified_nameduration_outputs/kernel:1-
+
_user_specified_namenote_outputs/bias:3/
-
_user_specified_namenote_outputs/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
1__inference_duration_outputs_layer_call_fn_104946

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*F
config_proto64

CPU

GPU 


TPU_SYSTEM

TPU2J 8� *U
fPRN
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104600|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name104942:&"
 
_user_specified_name104940:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
D
input_19
serving_default_input_1:0������������������
D
input_29
serving_default_input_2:0������������������Q
duration_outputs=
StatefulPartitionedCall:0������������������M
note_outputs=
StatefulPartitionedCall:1������������������;tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures
#_self_saveable_object_factories"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
D
#_self_saveable_object_factories"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb
#_self_saveable_object_factories"
_tf_keras_layer
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%	token_emb
&pos_emb
#'_self_saveable_object_factories"
_tf_keras_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
#._self_saveable_object_factories"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5attn
6	dropout_1
7ln_1
	8ffn_1
	9ffn_2
:	dropout_2
;ln_2
#<_self_saveable_object_factories"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias
#E_self_saveable_object_factories"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
#N_self_saveable_object_factories"
_tf_keras_layer
�
O0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15
_16
`17
C18
D19
L20
M21"
trackable_list_wrapper
�
O0
P1
Q2
R3
S4
T5
U6
V7
W8
X9
Y10
Z11
[12
\13
]14
^15
_16
`17
C18
D19
L20
M21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ftrace_0
gtrace_12�
&__inference_model_layer_call_fn_104753
&__inference_model_layer_call_fn_104805�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0zgtrace_1
�
htrace_0
itrace_12�
A__inference_model_layer_call_and_return_conditional_losses_104644
A__inference_model_layer_call_and_return_conditional_losses_104701�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zhtrace_0zitrace_1
�B�
!__inference__wrapped_model_104479input_1input_2"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
j
_variables
k_iterations
l_learning_rate
m_index_dict
n
_momentums
o_velocities
p_update_step_xla"
experimentalOptimizer
 "
trackable_list_wrapper
,
qserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
O0"
trackable_list_wrapper
'
O0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
=__inference_token_and_position_embedding_1_layer_call_fn_1909�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0
�
xtrace_02�
X__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_3029�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
O
embeddings
#_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
'
P0"
trackable_list_wrapper
'
P0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
=__inference_token_and_position_embedding_2_layer_call_fn_2977�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
X__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_1961�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
P
embeddings
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_concatenate_layer_call_fn_104890�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_concatenate_layer_call_and_return_conditional_losses_104897�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
�
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10
\11
]12
^13
_14
`15"
trackable_list_wrapper
�
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9
[10
\11
]12
^13
_14
`15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_attention_layer_call_fn_3583
(__inference_attention_layer_call_fn_2151�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_attention_layer_call_and_return_conditional_losses_2332
C__inference_attention_layer_call_and_return_conditional_losses_3963�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Ygamma
Zbeta
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	_gamma
`beta
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_note_outputs_layer_call_fn_104906�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_note_outputs_layer_call_and_return_conditional_losses_104937�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$	�;2note_outputs/kernel
:;2note_outputs/bias
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_duration_outputs_layer_call_fn_104946�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104977�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(	�2duration_outputs/kernel
#:!2duration_outputs/bias
 "
trackable_dict_wrapper
H:F	;�25token_and_position_embedding_1/embedding_1/embeddings
H:F	�25token_and_position_embedding_2/embedding_2/embeddings
C:A��2+attention/multi_head_attention/query/kernel
<::	�2)attention/multi_head_attention/query/bias
A:?��2)attention/multi_head_attention/key/kernel
::8	�2'attention/multi_head_attention/key/bias
C:A��2+attention/multi_head_attention/value/kernel
<::	�2)attention/multi_head_attention/value/bias
N:L��26attention/multi_head_attention/attention_output/kernel
C:A�24attention/multi_head_attention/attention_output/bias
2:0�2#attention/layer_normalization/gamma
1:/�2"attention/layer_normalization/beta
*:(
��2attention/dense/kernel
#:!�2attention/dense/bias
,:*
��2attention/dense_1/kernel
%:#�2attention/dense_1/bias
4:2�2%attention/layer_normalization_1/gamma
3:1�2$attention/layer_normalization_1/beta
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_layer_call_fn_104753input_1input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_layer_call_fn_104805input_1input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_104644input_1input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_104701input_1input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
k0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_104884input_1input_2"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 '

kwonlyargs�
	jinput_1
	jinput_2
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
=__inference_token_and_position_embedding_1_layer_call_fn_1909x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
X__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_3029x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
O0"
trackable_list_wrapper
'
O0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
=__inference_token_and_position_embedding_2_layer_call_fn_2977x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
X__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_1961x"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
P0"
trackable_list_wrapper
'
P0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_concatenate_layer_call_fn_104890inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_concatenate_layer_call_and_return_conditional_losses_104897inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
Q
50
61
72
83
94
:5
;6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_attention_layer_call_fn_3583inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
(__inference_attention_layer_call_fn_2151inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
C__inference_attention_layer_call_and_return_conditional_losses_2332inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
C__inference_attention_layer_call_and_return_conditional_losses_3963inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
X
Q0
R1
S2
T3
U4
V5
W6
X7"
trackable_list_wrapper
X
Q0
R1
S2
T3
U4
V5
W6
X7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Qkernel
Rbias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Skernel
Tbias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Ukernel
Vbias
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
$�_self_saveable_object_factories"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape

Wkernel
Xbias
$�_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_note_outputs_layer_call_fn_104906inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_note_outputs_layer_call_and_return_conditional_losses_104937inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_duration_outputs_layer_call_fn_104946inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104977inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
M:K	;�2<Adam/m/token_and_position_embedding_1/embedding_1/embeddings
M:K	;�2<Adam/v/token_and_position_embedding_1/embedding_1/embeddings
M:K	�2<Adam/m/token_and_position_embedding_2/embedding_2/embeddings
M:K	�2<Adam/v/token_and_position_embedding_2/embedding_2/embeddings
H:F��22Adam/m/attention/multi_head_attention/query/kernel
H:F��22Adam/v/attention/multi_head_attention/query/kernel
A:?	�20Adam/m/attention/multi_head_attention/query/bias
A:?	�20Adam/v/attention/multi_head_attention/query/bias
F:D��20Adam/m/attention/multi_head_attention/key/kernel
F:D��20Adam/v/attention/multi_head_attention/key/kernel
?:=	�2.Adam/m/attention/multi_head_attention/key/bias
?:=	�2.Adam/v/attention/multi_head_attention/key/bias
H:F��22Adam/m/attention/multi_head_attention/value/kernel
H:F��22Adam/v/attention/multi_head_attention/value/kernel
A:?	�20Adam/m/attention/multi_head_attention/value/bias
A:?	�20Adam/v/attention/multi_head_attention/value/bias
S:Q��2=Adam/m/attention/multi_head_attention/attention_output/kernel
S:Q��2=Adam/v/attention/multi_head_attention/attention_output/kernel
H:F�2;Adam/m/attention/multi_head_attention/attention_output/bias
H:F�2;Adam/v/attention/multi_head_attention/attention_output/bias
7:5�2*Adam/m/attention/layer_normalization/gamma
7:5�2*Adam/v/attention/layer_normalization/gamma
6:4�2)Adam/m/attention/layer_normalization/beta
6:4�2)Adam/v/attention/layer_normalization/beta
/:-
��2Adam/m/attention/dense/kernel
/:-
��2Adam/v/attention/dense/kernel
(:&�2Adam/m/attention/dense/bias
(:&�2Adam/v/attention/dense/bias
1:/
��2Adam/m/attention/dense_1/kernel
1:/
��2Adam/v/attention/dense_1/kernel
*:(�2Adam/m/attention/dense_1/bias
*:(�2Adam/v/attention/dense_1/bias
9:7�2,Adam/m/attention/layer_normalization_1/gamma
9:7�2,Adam/v/attention/layer_normalization_1/gamma
8:6�2+Adam/m/attention/layer_normalization_1/beta
8:6�2+Adam/v/attention/layer_normalization_1/beta
+:)	�;2Adam/m/note_outputs/kernel
+:)	�;2Adam/v/note_outputs/kernel
$:";2Adam/m/note_outputs/bias
$:";2Adam/v/note_outputs/bias
/:-	�2Adam/m/duration_outputs/kernel
/:-	�2Adam/v/duration_outputs/kernel
(:&2Adam/m/duration_outputs/bias
(:&2Adam/v/duration_outputs/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
!__inference__wrapped_model_104479�OPQRSTUVWXYZ[\]^_`LMCDj�g
`�]
[�X
*�'
input_1������������������
*�'
input_2������������������
� "���
K
duration_outputs7�4
duration_outputs������������������
C
note_outputs3�0
note_outputs������������������;�
C__inference_attention_layer_call_and_return_conditional_losses_2332�QRSTUVWXYZ[\]^_`M�J
3�0
.�+
inputs�������������������
�

trainingp"��~
w�t
2�/

tensor_0_0�������������������
>�;

tensor_0_1+���������������������������
� �
C__inference_attention_layer_call_and_return_conditional_losses_3963�QRSTUVWXYZ[\]^_`M�J
3�0
.�+
inputs�������������������
�

trainingp "��~
w�t
2�/

tensor_0_0�������������������
>�;

tensor_0_1+���������������������������
� �
(__inference_attention_layer_call_fn_2151�QRSTUVWXYZ[\]^_`M�J
3�0
.�+
inputs�������������������
�

trainingp "s�p
0�-
tensor_0�������������������
<�9
tensor_1+����������������������������
(__inference_attention_layer_call_fn_3583�QRSTUVWXYZ[\]^_`M�J
3�0
.�+
inputs�������������������
�

trainingp"s�p
0�-
tensor_0�������������������
<�9
tensor_1+����������������������������
G__inference_concatenate_layer_call_and_return_conditional_losses_104897�v�s
l�i
g�d
0�-
inputs_0�������������������
0�-
inputs_1�������������������
� ":�7
0�-
tensor_0�������������������
� �
,__inference_concatenate_layer_call_fn_104890�v�s
l�i
g�d
0�-
inputs_0�������������������
0�-
inputs_1�������������������
� "/�,
unknown��������������������
L__inference_duration_outputs_layer_call_and_return_conditional_losses_104977~LM=�:
3�0
.�+
inputs�������������������
� "9�6
/�,
tensor_0������������������
� �
1__inference_duration_outputs_layer_call_fn_104946sLM=�:
3�0
.�+
inputs�������������������
� ".�+
unknown�������������������
A__inference_model_layer_call_and_return_conditional_losses_104644�OPQRSTUVWXYZ[\]^_`LMCDr�o
h�e
[�X
*�'
input_1������������������
*�'
input_2������������������
p

 
� "s�p
i�f
1�.

tensor_0_0������������������;
1�.

tensor_0_1������������������
� �
A__inference_model_layer_call_and_return_conditional_losses_104701�OPQRSTUVWXYZ[\]^_`LMCDr�o
h�e
[�X
*�'
input_1������������������
*�'
input_2������������������
p 

 
� "s�p
i�f
1�.

tensor_0_0������������������;
1�.

tensor_0_1������������������
� �
&__inference_model_layer_call_fn_104753�OPQRSTUVWXYZ[\]^_`LMCDr�o
h�e
[�X
*�'
input_1������������������
*�'
input_2������������������
p

 
� "e�b
/�,
tensor_0������������������;
/�,
tensor_1�������������������
&__inference_model_layer_call_fn_104805�OPQRSTUVWXYZ[\]^_`LMCDr�o
h�e
[�X
*�'
input_1������������������
*�'
input_2������������������
p 

 
� "e�b
/�,
tensor_0������������������;
/�,
tensor_1�������������������
H__inference_note_outputs_layer_call_and_return_conditional_losses_104937~CD=�:
3�0
.�+
inputs�������������������
� "9�6
/�,
tensor_0������������������;
� �
-__inference_note_outputs_layer_call_fn_104906sCD=�:
3�0
.�+
inputs�������������������
� ".�+
unknown������������������;�
$__inference_signature_wrapper_104884�OPQRSTUVWXYZ[\]^_`LMCD{�x
� 
q�n
5
input_1*�'
input_1������������������
5
input_2*�'
input_2������������������"���
K
duration_outputs7�4
duration_outputs������������������
C
note_outputs3�0
note_outputs������������������;�
X__inference_token_and_position_embedding_1_layer_call_and_return_conditional_losses_3029tO3�0
)�&
$�!
x������������������
� ":�7
0�-
tensor_0�������������������
� �
=__inference_token_and_position_embedding_1_layer_call_fn_1909iO3�0
)�&
$�!
x������������������
� "/�,
unknown��������������������
X__inference_token_and_position_embedding_2_layer_call_and_return_conditional_losses_1961tP3�0
)�&
$�!
x������������������
� ":�7
0�-
tensor_0�������������������
� �
=__inference_token_and_position_embedding_2_layer_call_fn_2977iP3�0
)�&
$�!
x������������������
� "/�,
unknown�������������������