�
�#�"
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint�
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
�
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
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
$

LogicalAnd
x

y

z
�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
�
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
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
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8�
�
+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*<
shared_name-+RMSprop/simple_rnn/simple_rnn_cell/bias/rms
�
?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOpReadVariableOp+RMSprop/simple_rnn/simple_rnn_cell/bias/rms*
_output_shapes	
:�*
dtype0
�
7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
�
KRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms* 
_output_shapes
:
��*
dtype0
�
-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?�*>
shared_name/-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
�
ARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpReadVariableOp-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms*
_output_shapes
:	?�*
dtype0
�
RMSprop/dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameRMSprop/dense/bias/rms
}
*RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/bias/rms*
_output_shapes
:?*
dtype0
�
RMSprop/dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�?*)
shared_nameRMSprop/dense/kernel/rms
�
,RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/kernel/rms*
_output_shapes
:	�?*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
�
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!simple_rnn/simple_rnn_cell/bias
�
3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes	
:�*
dtype0
�
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
�
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?�*2
shared_name#!simple_rnn/simple_rnn_cell/kernel
�
5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes
:	?�*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�?*
dtype0
�
&serving_default_time_distributed_inputPlaceholder*4
_output_shapes"
 :������������������*
dtype0*)
shape :������������������
�
StatefulPartitionedCallStatefulPartitionedCall&serving_default_time_distributed_input!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kerneldense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_822399

NoOpNoOp
�.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�.
value�.B�. B�.
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	layer* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias*
'
$0
%1
&2
"3
#4*
'
$0
%1
&2
"3
#4*
* 
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
,trace_0
-trace_1
.trace_2
/trace_3* 
6
0trace_0
1trace_1
2trace_2
3trace_3* 
* 
z
4iter
	5decay
6learning_rate
7momentum
8rho	"rmsz	#rms{	$rms|	%rms}	&rms~*

9serving_default* 
* 
* 
* 
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

?trace_0
@trace_1* 

Atrace_0
Btrace_1* 
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 

$0
%1
&2*

$0
%1
&2*
* 
�

Istates
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
6
Strace_0
Ttrace_1
Utrace_2
Vtrace_3* 
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]_random_generator

$kernel
%recurrent_kernel
&bias*
* 

"0
#1*

"0
#1*
* 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

e0*
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
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
	
0* 
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
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

ktrace_0* 

ltrace_0* 
* 
* 

0*
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

$0
%1
&2*

$0
%1
&2*
* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

rtrace_0
strace_1* 

ttrace_0
utrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
8
v	variables
w	keras_api
	xtotal
	ycount*
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

x0
y1*

v	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUERMSprop/dense/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUERMSprop/dense/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE-RMSprop/simple_rnn/simple_rnn_cell/kernel/rmsDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE+RMSprop/simple_rnn/simple_rnn_cell/bias/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOp?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOp3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,RMSprop/dense/kernel/rms/Read/ReadVariableOp*RMSprop/dense/bias/rms/Read/ReadVariableOpARMSprop/simple_rnn/simple_rnn_cell/kernel/rms/Read/ReadVariableOpKRMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms/Read/ReadVariableOp?RMSprop/simple_rnn/simple_rnn_cell/bias/rms/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_823805
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcountRMSprop/dense/kernel/rmsRMSprop/dense/bias/rms-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms7RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms+RMSprop/simple_rnn/simple_rnn_cell/bias/rms*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_823866��
�
�
while_cond_821821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_821821___redundant_placeholder04
0while_while_cond_821821___redundant_placeholder14
0while_while_cond_821821___redundant_placeholder24
0while_while_cond_821821___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_822174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_822174___redundant_placeholder04
0while_while_cond_822174___redundant_placeholder14
0while_while_cond_822174___redundant_placeholder24
0while_while_cond_822174___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
j
1__inference_time_distributed_layer_call_fn_822861

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_821567|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�	
�
$__inference_signature_wrapper_822399
time_distributed_input
unknown:	?�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�?
	unknown_3:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_821484|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
4
_output_shapes"
 :������������������
0
_user_specified_nametime_distributed_input
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_821540

inputs
identity��)category_encoding/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:����������
)category_encoding/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_category_encoding_layer_call_and_return_conditional_losses_821533\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_1Reshape2category_encoding/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������?n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?r
NoOpNoOp*^category_encoding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������2V
)category_encoding/StatefulPartitionedCall)category_encoding/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_821567

inputs
identity��)category_encoding/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:����������
)category_encoding/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_category_encoding_layer_call_and_return_conditional_losses_821533\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_1Reshape2category_encoding/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������?n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?r
NoOpNoOp*^category_encoding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������2V
)category_encoding/StatefulPartitionedCall)category_encoding/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�	
�
+__inference_sequential_layer_call_fn_822338
time_distributed_input
unknown:	?�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�?
	unknown_3:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_822310|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
4
_output_shapes"
 :������������������
0
_user_specified_nametime_distributed_input
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_822310

inputs$
simple_rnn_822297:	?� 
simple_rnn_822299:	�%
simple_rnn_822301:
��
dense_822304:	�?
dense_822306:?
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_821567o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0simple_rnn_822297simple_rnn_822299simple_rnn_822301*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822265�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_822304dense_822306*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_822066�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�$
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821770

inputs

states1
matmul_readvariableop_resource:	?�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:���������?O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������?G
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?w
dropout_1/MulMulones_like_1:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:����������S
dropout_1/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:�
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������t
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������p
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:����������W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0q
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�2
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_822907

inputs
identity��category_encoding/Assert/Assert;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������h
category_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       q
category_encoding/MaxMaxReshape:output:0 category_encoding/Const:output:0*
T0*
_output_shapes
: j
category_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       s
category_encoding/MinMinReshape:output:0"category_encoding/Const_1:output:0*
T0*
_output_shapes
: Z
category_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :?q
category_encoding/CastCast!category_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
category_encoding/GreaterGreatercategory_encoding/Cast:y:0category_encoding/Max:output:0*
T0*
_output_shapes
: \
category_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : u
category_encoding/Cast_1Cast#category_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
category_encoding/GreaterEqualGreaterEqualcategory_encoding/Min:output:0category_encoding/Cast_1:y:0*
T0*
_output_shapes
: �
category_encoding/LogicalAnd
LogicalAndcategory_encoding/Greater:z:0"category_encoding/GreaterEqual:z:0*
_output_shapes
: �
category_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
&category_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
category_encoding/Assert/AssertAssert category_encoding/LogicalAnd:z:0/category_encoding/Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 �
category_encoding/bincount/CastCastReshape:output:0 ^category_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������s
 category_encoding/bincount/ShapeShape#category_encoding/bincount/Cast:y:0*
T0*
_output_shapes
:�
 category_encoding/bincount/ConstConst ^category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
category_encoding/bincount/ProdProd)category_encoding/bincount/Shape:output:0)category_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
$category_encoding/bincount/Greater/yConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
"category_encoding/bincount/GreaterGreater(category_encoding/bincount/Prod:output:0-category_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
!category_encoding/bincount/Cast_1Cast&category_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
"category_encoding/bincount/Const_1Const ^category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
category_encoding/bincount/MaxMax#category_encoding/bincount/Cast:y:0+category_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: �
 category_encoding/bincount/add/yConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
category_encoding/bincount/addAddV2'category_encoding/bincount/Max:output:0)category_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
category_encoding/bincount/mulMul%category_encoding/bincount/Cast_1:y:0"category_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
$category_encoding/bincount/minlengthConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
"category_encoding/bincount/MaximumMaximum-category_encoding/bincount/minlength:output:0"category_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
$category_encoding/bincount/maxlengthConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
"category_encoding/bincount/MinimumMinimum-category_encoding/bincount/maxlength:output:0&category_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
"category_encoding/bincount/Const_2Const ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
(category_encoding/bincount/DenseBincountDenseBincount#category_encoding/bincount/Cast:y:0&category_encoding/bincount/Minimum:z:0+category_encoding/bincount/Const_2:output:0*
T0*

Tidx0*'
_output_shapes
:���������?*
binary_output(\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_1Reshape1category_encoding/bincount/DenseBincount:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������?n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?h
NoOpNoOp ^category_encoding/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������2B
category_encoding/Assert/Assertcategory_encoding/Assert/Assert:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�X
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823557

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	?�>
/simple_rnn_cell_biasadd_readvariableop_resource:	�D
0simple_rnn_cell_matmul_1_readvariableop_resource:
��
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_maskg
simple_rnn_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:d
simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_likeFill(simple_rnn_cell/ones_like/Shape:output:0(simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?b
simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell/dropout/MulMul"simple_rnn_cell/ones_like:output:0&simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?o
simple_rnn_cell/dropout/ShapeShape"simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
4simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform&simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0k
&simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
$simple_rnn_cell/dropout/GreaterEqualGreaterEqual=simple_rnn_cell/dropout/random_uniform/RandomUniform:output:0/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
simple_rnn_cell/dropout/CastCast(simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
simple_rnn_cell/dropout/Mul_1Mulsimple_rnn_cell/dropout/Mul:z:0 simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?_
!simple_rnn_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_like_1Fill*simple_rnn_cell/ones_like_1/Shape:output:0*simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������d
simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell/dropout_1/MulMul$simple_rnn_cell/ones_like_1:output:0(simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:����������s
simple_rnn_cell/dropout_1/ShapeShape$simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
6simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform(simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0m
(simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
&simple_rnn_cell/dropout_1/GreaterEqualGreaterEqual?simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:01simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/dropout_1/CastCast*simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
simple_rnn_cell/dropout_1/Mul_1Mul!simple_rnn_cell/dropout_1/Mul:z:0"simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mulMulstrided_slice_2:output:0!simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
simple_rnn_cell/MatMulMatMulsimple_rnn_cell/mul:z:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mul_1Mulzeros:output:0#simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell/MatMul_1MatMulsimple_rnn_cell/mul_1:z:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������h
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_823467*
condR
while_cond_823466*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�E
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823121
inputs_0A
.simple_rnn_cell_matmul_readvariableop_resource:	?�>
/simple_rnn_cell_biasadd_readvariableop_resource:	�D
0simple_rnn_cell_matmul_1_readvariableop_resource:
��
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_maskg
simple_rnn_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:d
simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_likeFill(simple_rnn_cell/ones_like/Shape:output:0(simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?_
!simple_rnn_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_like_1Fill*simple_rnn_cell/ones_like_1/Shape:output:0*simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mulMulstrided_slice_2:output:0"simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
simple_rnn_cell/MatMulMatMulsimple_rnn_cell/mul:z:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mul_1Mulzeros:output:0$simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell/MatMul_1MatMulsimple_rnn_cell/mul_1:z:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������h
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_823047*
condR
while_cond_823046*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs/0
�$
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823731

inputs
states_01
matmul_readvariableop_resource:	?�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:���������?O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������?I
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?w
dropout_1/MulMulones_like_1:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:����������S
dropout_1/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:�
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������t
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������p
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:����������W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0q
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
��
�
!__inference__wrapped_model_821484
time_distributed_inputW
Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:	?�T
Esequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	�Z
Fsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
��E
2sequential_dense_tensordot_readvariableop_resource:	�?>
0sequential_dense_biasadd_readvariableop_resource:?
identity��'sequential/dense/BiasAdd/ReadVariableOp�)sequential/dense/Tensordot/ReadVariableOp�<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�sequential/simple_rnn/while�;sequential/time_distributed/category_encoding/Assert/Assertg
!sequential/time_distributed/ShapeShapetime_distributed_input*
T0*
_output_shapes
:y
/sequential/time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1sequential/time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential/time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential/time_distributed/strided_sliceStridedSlice*sequential/time_distributed/Shape:output:08sequential/time_distributed/strided_slice/stack:output:0:sequential/time_distributed/strided_slice/stack_1:output:0:sequential/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
)sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
#sequential/time_distributed/ReshapeReshapetime_distributed_input2sequential/time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
3sequential/time_distributed/category_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
1sequential/time_distributed/category_encoding/MaxMax,sequential/time_distributed/Reshape:output:0<sequential/time_distributed/category_encoding/Const:output:0*
T0*
_output_shapes
: �
5sequential/time_distributed/category_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
1sequential/time_distributed/category_encoding/MinMin,sequential/time_distributed/Reshape:output:0>sequential/time_distributed/category_encoding/Const_1:output:0*
T0*
_output_shapes
: v
4sequential/time_distributed/category_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :?�
2sequential/time_distributed/category_encoding/CastCast=sequential/time_distributed/category_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
5sequential/time_distributed/category_encoding/GreaterGreater6sequential/time_distributed/category_encoding/Cast:y:0:sequential/time_distributed/category_encoding/Max:output:0*
T0*
_output_shapes
: x
6sequential/time_distributed/category_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : �
4sequential/time_distributed/category_encoding/Cast_1Cast?sequential/time_distributed/category_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
:sequential/time_distributed/category_encoding/GreaterEqualGreaterEqual:sequential/time_distributed/category_encoding/Min:output:08sequential/time_distributed/category_encoding/Cast_1:y:0*
T0*
_output_shapes
: �
8sequential/time_distributed/category_encoding/LogicalAnd
LogicalAnd9sequential/time_distributed/category_encoding/Greater:z:0>sequential/time_distributed/category_encoding/GreaterEqual:z:0*
_output_shapes
: �
:sequential/time_distributed/category_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
Bsequential/time_distributed/category_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
;sequential/time_distributed/category_encoding/Assert/AssertAssert<sequential/time_distributed/category_encoding/LogicalAnd:z:0Ksequential/time_distributed/category_encoding/Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 �
;sequential/time_distributed/category_encoding/bincount/CastCast,sequential/time_distributed/Reshape:output:0<^sequential/time_distributed/category_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:����������
<sequential/time_distributed/category_encoding/bincount/ShapeShape?sequential/time_distributed/category_encoding/bincount/Cast:y:0*
T0*
_output_shapes
:�
<sequential/time_distributed/category_encoding/bincount/ConstConst<^sequential/time_distributed/category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
;sequential/time_distributed/category_encoding/bincount/ProdProdEsequential/time_distributed/category_encoding/bincount/Shape:output:0Esequential/time_distributed/category_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
@sequential/time_distributed/category_encoding/bincount/Greater/yConst<^sequential/time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
>sequential/time_distributed/category_encoding/bincount/GreaterGreaterDsequential/time_distributed/category_encoding/bincount/Prod:output:0Isequential/time_distributed/category_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
=sequential/time_distributed/category_encoding/bincount/Cast_1CastBsequential/time_distributed/category_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
>sequential/time_distributed/category_encoding/bincount/Const_1Const<^sequential/time_distributed/category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
:sequential/time_distributed/category_encoding/bincount/MaxMax?sequential/time_distributed/category_encoding/bincount/Cast:y:0Gsequential/time_distributed/category_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: �
<sequential/time_distributed/category_encoding/bincount/add/yConst<^sequential/time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
:sequential/time_distributed/category_encoding/bincount/addAddV2Csequential/time_distributed/category_encoding/bincount/Max:output:0Esequential/time_distributed/category_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
:sequential/time_distributed/category_encoding/bincount/mulMulAsequential/time_distributed/category_encoding/bincount/Cast_1:y:0>sequential/time_distributed/category_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
@sequential/time_distributed/category_encoding/bincount/minlengthConst<^sequential/time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
>sequential/time_distributed/category_encoding/bincount/MaximumMaximumIsequential/time_distributed/category_encoding/bincount/minlength:output:0>sequential/time_distributed/category_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
@sequential/time_distributed/category_encoding/bincount/maxlengthConst<^sequential/time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
>sequential/time_distributed/category_encoding/bincount/MinimumMinimumIsequential/time_distributed/category_encoding/bincount/maxlength:output:0Bsequential/time_distributed/category_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
>sequential/time_distributed/category_encoding/bincount/Const_2Const<^sequential/time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
Dsequential/time_distributed/category_encoding/bincount/DenseBincountDenseBincount?sequential/time_distributed/category_encoding/bincount/Cast:y:0Bsequential/time_distributed/category_encoding/bincount/Minimum:z:0Gsequential/time_distributed/category_encoding/bincount/Const_2:output:0*
T0*

Tidx0*'
_output_shapes
:���������?*
binary_output(x
-sequential/time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������o
-sequential/time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?�
+sequential/time_distributed/Reshape_1/shapePack6sequential/time_distributed/Reshape_1/shape/0:output:02sequential/time_distributed/strided_slice:output:06sequential/time_distributed/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:�
%sequential/time_distributed/Reshape_1ReshapeMsequential/time_distributed/category_encoding/bincount/DenseBincount:output:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������?|
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
%sequential/time_distributed/Reshape_2Reshapetime_distributed_input4sequential/time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������y
sequential/simple_rnn/ShapeShape.sequential/time_distributed/Reshape_1:output:0*
T0*
_output_shapes
:s
)sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#sequential/simple_rnn/strided_sliceStridedSlice$sequential/simple_rnn/Shape:output:02sequential/simple_rnn/strided_slice/stack:output:04sequential/simple_rnn/strided_slice/stack_1:output:04sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
"sequential/simple_rnn/zeros/packedPack,sequential/simple_rnn/strided_slice:output:0-sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential/simple_rnn/zerosFill+sequential/simple_rnn/zeros/packed:output:0*sequential/simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:����������y
$sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential/simple_rnn/transpose	Transpose.sequential/time_distributed/Reshape_1:output:0-sequential/simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������?p
sequential/simple_rnn/Shape_1Shape#sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
:u
+sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential/simple_rnn/strided_slice_1StridedSlice&sequential/simple_rnn/Shape_1:output:04sequential/simple_rnn/strided_slice_1/stack:output:06sequential/simple_rnn/strided_slice_1/stack_1:output:06sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#sequential/simple_rnn/TensorArrayV2TensorListReserve:sequential/simple_rnn/TensorArrayV2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/simple_rnn/transpose:y:0Tsequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential/simple_rnn/strided_slice_2StridedSlice#sequential/simple_rnn/transpose:y:04sequential/simple_rnn/strided_slice_2/stack:output:06sequential/simple_rnn/strided_slice_2/stack_1:output:06sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
5sequential/simple_rnn/simple_rnn_cell/ones_like/ShapeShape.sequential/simple_rnn/strided_slice_2:output:0*
T0*
_output_shapes
:z
5sequential/simple_rnn/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
/sequential/simple_rnn/simple_rnn_cell/ones_likeFill>sequential/simple_rnn/simple_rnn_cell/ones_like/Shape:output:0>sequential/simple_rnn/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?�
7sequential/simple_rnn/simple_rnn_cell/ones_like_1/ShapeShape$sequential/simple_rnn/zeros:output:0*
T0*
_output_shapes
:|
7sequential/simple_rnn/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
1sequential/simple_rnn/simple_rnn_cell/ones_like_1Fill@sequential/simple_rnn/simple_rnn_cell/ones_like_1/Shape:output:0@sequential/simple_rnn/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
)sequential/simple_rnn/simple_rnn_cell/mulMul.sequential/simple_rnn/strided_slice_2:output:08sequential/simple_rnn/simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpDsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
,sequential/simple_rnn/simple_rnn_cell/MatMulMatMul-sequential/simple_rnn/simple_rnn_cell/mul:z:0Csequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential/simple_rnn/simple_rnn_cell/BiasAddBiasAdd6sequential/simple_rnn/simple_rnn_cell/MatMul:product:0Dsequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential/simple_rnn/simple_rnn_cell/mul_1Mul$sequential/simple_rnn/zeros:output:0:sequential/simple_rnn/simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
.sequential/simple_rnn/simple_rnn_cell/MatMul_1MatMul/sequential/simple_rnn/simple_rnn_cell/mul_1:z:0Esequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)sequential/simple_rnn/simple_rnn_cell/addAddV26sequential/simple_rnn/simple_rnn_cell/BiasAdd:output:08sequential/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
*sequential/simple_rnn/simple_rnn_cell/TanhTanh-sequential/simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
3sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
%sequential/simple_rnn/TensorArrayV2_1TensorListReserve<sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential/simple_rnn/whileWhile1sequential/simple_rnn/while/loop_counter:output:07sequential/simple_rnn/while/maximum_iterations:output:0#sequential/simple_rnn/time:output:0.sequential/simple_rnn/TensorArrayV2_1:handle:0$sequential/simple_rnn/zeros:output:0.sequential/simple_rnn/strided_slice_1:output:0Msequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'sequential_simple_rnn_while_body_821383*3
cond+R)
'sequential_simple_rnn_while_cond_821382*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/simple_rnn/while:output:3Osequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0~
+sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%sequential/simple_rnn/strided_slice_3StridedSliceAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04sequential/simple_rnn/strided_slice_3/stack:output:06sequential/simple_rnn/strided_slice_3/stack_1:output:06sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask{
&sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!sequential/simple_rnn/transpose_1	TransposeAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/simple_rnn/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:��������������������
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	�?*
dtype0i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
 sequential/dense/Tensordot/ShapeShape%sequential/simple_rnn/transpose_1:y:0*
T0*
_output_shapes
:j
(sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
$sequential/dense/Tensordot/transpose	Transpose%sequential/simple_rnn/transpose_1:y:0*sequential/dense/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:01sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?l
"sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :������������������?�
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������?�
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������?~
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������?�
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp=^sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<^sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp>^sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn/while<^sequential/time_distributed/category_encoding/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2|
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2z
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2~
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2:
sequential/simple_rnn/whilesequential/simple_rnn/while2z
;sequential/time_distributed/category_encoding/Assert/Assert;sequential/time_distributed/category_encoding/Assert/Assert:l h
4
_output_shapes"
 :������������������
0
_user_specified_nametime_distributed_input
�3
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_821885

inputs)
simple_rnn_cell_821810:	?�%
simple_rnn_cell_821812:	�*
simple_rnn_cell_821814:
��
identity��'simple_rnn_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_821810simple_rnn_cell_821812simple_rnn_cell_821814*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821770n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_821810simple_rnn_cell_821812simple_rnn_cell_821814*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_821822*
condR
while_cond_821821*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:�������������������x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_822376
time_distributed_input$
simple_rnn_822363:	?� 
simple_rnn_822365:	�%
simple_rnn_822367:
��
dense_822370:	�?
dense_822372:?
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCalltime_distributed_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_821567o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/ReshapeReshapetime_distributed_input'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0simple_rnn_822363simple_rnn_822365simple_rnn_822367*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822265�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_822370dense_822372*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_822066�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:l h
4
_output_shapes"
 :������������������
0
_user_specified_nametime_distributed_input
�@
�
simple_rnn_while_body_8225232
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0T
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�Q
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�W
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorR
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:	?�O
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	�U
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
����7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
0simple_rnn/while/simple_rnn_cell/ones_like/ShapeShape;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:u
0simple_rnn/while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*simple_rnn/while/simple_rnn_cell/ones_likeFill9simple_rnn/while/simple_rnn_cell/ones_like/Shape:output:09simple_rnn/while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?�
2simple_rnn/while/simple_rnn_cell/ones_like_1/ShapeShapesimple_rnn_while_placeholder_2*
T0*
_output_shapes
:w
2simple_rnn/while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,simple_rnn/while/simple_rnn_cell/ones_like_1Fill;simple_rnn/while/simple_rnn_cell/ones_like_1/Shape:output:0;simple_rnn/while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
$simple_rnn/while/simple_rnn_cell/mulMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:03simple_rnn/while/simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
'simple_rnn/while/simple_rnn_cell/MatMulMatMul(simple_rnn/while/simple_rnn_cell/mul:z:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn/while/simple_rnn_cell/mul_1Mulsimple_rnn_while_placeholder_25simple_rnn/while/simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMul*simple_rnn/while/simple_rnn_cell/mul_1:z:0@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: �
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: �
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: �
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:�����������
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"�
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"�
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
+__inference_sequential_layer_call_fn_822414

inputs
unknown:	?�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�?
	unknown_3:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_822073|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_823046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_823046___redundant_placeholder04
0while_while_cond_823046___redundant_placeholder14
0while_while_cond_823046___redundant_placeholder24
0while_while_cond_823046___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�

�
simple_rnn_while_cond_8225222
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_822522___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_822522___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_822522___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_822522___redundant_placeholder3
simple_rnn_while_identity
�
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
'sequential_simple_rnn_while_cond_821382H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2J
Fsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_821382___redundant_placeholder0`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_821382___redundant_placeholder1`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_821382___redundant_placeholder2`
\sequential_simple_rnn_while_sequential_simple_rnn_while_cond_821382___redundant_placeholder3(
$sequential_simple_rnn_while_identity
�
 sequential/simple_rnn/while/LessLess'sequential_simple_rnn_while_placeholderFsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: w
$sequential/simple_rnn/while/IdentityIdentity$sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�

�
0__inference_simple_rnn_cell_layer_call_fn_823651

inputs
states_0
unknown:	?�
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821626p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
+__inference_simple_rnn_layer_call_fn_822964
inputs_0
unknown:	?�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_821702}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs/0
�

�
simple_rnn_while_cond_8227332
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_24
0simple_rnn_while_less_simple_rnn_strided_slice_1J
Fsimple_rnn_while_simple_rnn_while_cond_822733___redundant_placeholder0J
Fsimple_rnn_while_simple_rnn_while_cond_822733___redundant_placeholder1J
Fsimple_rnn_while_simple_rnn_while_cond_822733___redundant_placeholder2J
Fsimple_rnn_while_simple_rnn_while_cond_822733___redundant_placeholder3
simple_rnn_while_identity
�
simple_rnn/while/LessLesssimple_rnn_while_placeholder0simple_rnn_while_less_simple_rnn_strided_slice_1*
T0*
_output_shapes
: a
simple_rnn/while/IdentityIdentitysimple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�4
�
while_body_821953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	?�D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	�J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
����,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
%while/simple_rnn_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:j
%while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/simple_rnn_cell/ones_likeFill.while/simple_rnn_cell/ones_like/Shape:output:0.while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?j
'while/simple_rnn_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:l
'while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell/ones_like_1Fill0while/simple_rnn_cell/ones_like_1/Shape:output:00while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
while/simple_rnn_cell/MatMulMatMulwhile/simple_rnn_cell/mul:z:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mul_1Mulwhile_placeholder_2*while/simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile/simple_rnn_cell/mul_1:z:05while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������t
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
|
M__inference_category_encoding_layer_call_and_return_conditional_losses_821533

inputs
identity��Assert/AssertV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       C
MaxMaxinputsConst:output:0*
T0*
_output_shapes
: X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       E
MinMininputsConst_1:output:0*
T0*
_output_shapes
: H
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :?M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: K
GreaterGreaterCast:y:0Max:output:0*
T0*
_output_shapes
: J
Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: W
GreaterEqualGreaterEqualMin:output:0
Cast_1:y:0*
T0*
_output_shapes
: O

LogicalAnd
LogicalAndGreater:z:0GreaterEqual:z:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63h
Assert/AssertAssertLogicalAnd:z:0Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 n
bincount/CastCastinputs^Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������O
bincount/ShapeShapebincount/Cast:y:0*
T0*
_output_shapes
:h
bincount/ConstConst^Assert/Assert*
_output_shapes
:*
dtype0*
valueB: h
bincount/ProdProdbincount/Shape:output:0bincount/Const:output:0*
T0*
_output_shapes
: d
bincount/Greater/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B : q
bincount/GreaterGreaterbincount/Prod:output:0bincount/Greater/y:output:0*
T0*
_output_shapes
: ]
bincount/Cast_1Castbincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: q
bincount/Const_1Const^Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       b
bincount/MaxMaxbincount/Cast:y:0bincount/Const_1:output:0*
T0*
_output_shapes
: `
bincount/add/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :f
bincount/addAddV2bincount/Max:output:0bincount/add/y:output:0*
T0*
_output_shapes
: [
bincount/mulMulbincount/Cast_1:y:0bincount/add:z:0*
T0*
_output_shapes
: d
bincount/minlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?k
bincount/MaximumMaximumbincount/minlength:output:0bincount/mul:z:0*
T0*
_output_shapes
: d
bincount/maxlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?o
bincount/MinimumMinimumbincount/maxlength:output:0bincount/Maximum:z:0*
T0*
_output_shapes
: c
bincount/Const_2Const^Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
bincount/DenseBincountDenseBincountbincount/Cast:y:0bincount/Minimum:z:0bincount/Const_2:output:0*
T0*

Tidx0*'
_output_shapes
:���������?*
binary_output(n
IdentityIdentitybincount/DenseBincount:output:0^NoOp*
T0*'
_output_shapes
:���������?V
NoOpNoOp^Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2
Assert/AssertAssert/Assert:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
while_body_823047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	?�D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	�J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
����,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
%while/simple_rnn_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:j
%while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/simple_rnn_cell/ones_likeFill.while/simple_rnn_cell/ones_like/Shape:output:0.while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?j
'while/simple_rnn_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:l
'while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell/ones_like_1Fill0while/simple_rnn_cell/ones_like_1/Shape:output:00while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
while/simple_rnn_cell/MatMulMatMulwhile/simple_rnn_cell/mul:z:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mul_1Mulwhile_placeholder_2*while/simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile/simple_rnn_cell/mul_1:z:05while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������t
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�I
�
while_body_822175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	?�D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	�J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
����,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
%while/simple_rnn_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:j
%while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/simple_rnn_cell/ones_likeFill.while/simple_rnn_cell/ones_like/Shape:output:0.while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?h
#while/simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
!while/simple_rnn_cell/dropout/MulMul(while/simple_rnn_cell/ones_like:output:0,while/simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?{
#while/simple_rnn_cell/dropout/ShapeShape(while/simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
:while/simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform,while/simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0q
,while/simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
*while/simple_rnn_cell/dropout/GreaterEqualGreaterEqualCwhile/simple_rnn_cell/dropout/random_uniform/RandomUniform:output:05while/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
"while/simple_rnn_cell/dropout/CastCast.while/simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
#while/simple_rnn_cell/dropout/Mul_1Mul%while/simple_rnn_cell/dropout/Mul:z:0&while/simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?j
'while/simple_rnn_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:l
'while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell/ones_like_1Fill0while/simple_rnn_cell/ones_like_1/Shape:output:00while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������j
%while/simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
#while/simple_rnn_cell/dropout_1/MulMul*while/simple_rnn_cell/ones_like_1:output:0.while/simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:����������
%while/simple_rnn_cell/dropout_1/ShapeShape*while/simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
<while/simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0s
.while/simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
,while/simple_rnn_cell/dropout_1/GreaterEqualGreaterEqualEwhile/simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:07while/simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
$while/simple_rnn_cell/dropout_1/CastCast0while/simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
%while/simple_rnn_cell/dropout_1/Mul_1Mul'while/simple_rnn_cell/dropout_1/Mul:z:0(while/simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
while/simple_rnn_cell/MatMulMatMulwhile/simple_rnn_cell/mul:z:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mul_1Mulwhile_placeholder_2)while/simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile/simple_rnn_cell/mul_1:z:05while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������t
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
+__inference_sequential_layer_call_fn_822429

inputs
unknown:	?�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�?
	unknown_3:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_822310|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�,
�
__inference__traced_save_823805
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop@
<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopJ
Fsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop>
:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_rmsprop_dense_kernel_rms_read_readvariableop5
1savev2_rmsprop_dense_bias_rms_read_readvariableopL
Hsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopV
Rsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopJ
Fsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop<savev2_simple_rnn_simple_rnn_cell_kernel_read_readvariableopFsavev2_simple_rnn_simple_rnn_cell_recurrent_kernel_read_readvariableop:savev2_simple_rnn_simple_rnn_cell_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_rmsprop_dense_kernel_rms_read_readvariableop1savev2_rmsprop_dense_bias_rms_read_readvariableopHsavev2_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms_read_readvariableopRsavev2_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms_read_readvariableopFsavev2_rmsprop_simple_rnn_simple_rnn_cell_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapesr
p: :	�?:?:	?�:
��:�: : : : : : : :	�?:?:	?�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�?: 

_output_shapes
:?:%!

_output_shapes
:	?�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�?: 

_output_shapes
:?:%!

_output_shapes
:	?�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: 
�

�
0__inference_simple_rnn_cell_layer_call_fn_823665

inputs
states_0
unknown:	?�
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821770p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
while_cond_823186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_823186___redundant_placeholder04
0while_while_cond_823186___redundant_placeholder14
0while_while_cond_823186___redundant_placeholder24
0while_while_cond_823186___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�L
�
'sequential_simple_rnn_while_body_821383H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2G
Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0�
sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�\
Msequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�b
Nsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��(
$sequential_simple_rnn_while_identity*
&sequential_simple_rnn_while_identity_1*
&sequential_simple_rnn_while_identity_2*
&sequential_simple_rnn_while_identity_3*
&sequential_simple_rnn_while_identity_4E
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1�
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor]
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:	?�Z
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	�`
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
����Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderVsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
;sequential/simple_rnn/while/simple_rnn_cell/ones_like/ShapeShapeFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:�
;sequential/simple_rnn/while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential/simple_rnn/while/simple_rnn_cell/ones_likeFillDsequential/simple_rnn/while/simple_rnn_cell/ones_like/Shape:output:0Dsequential/simple_rnn/while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?�
=sequential/simple_rnn/while/simple_rnn_cell/ones_like_1/ShapeShape)sequential_simple_rnn_while_placeholder_2*
T0*
_output_shapes
:�
=sequential/simple_rnn/while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7sequential/simple_rnn/while/simple_rnn_cell/ones_like_1FillFsequential/simple_rnn/while/simple_rnn_cell/ones_like_1/Shape:output:0Fsequential/simple_rnn/while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
/sequential/simple_rnn/while/simple_rnn_cell/mulMulFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0>sequential/simple_rnn/while/simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
2sequential/simple_rnn/while/simple_rnn_cell/MatMulMatMul3sequential/simple_rnn/while/simple_rnn_cell/mul:z:0Isequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
3sequential/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd<sequential/simple_rnn/while/simple_rnn_cell/MatMul:product:0Jsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1sequential/simple_rnn/while/simple_rnn_cell/mul_1Mul)sequential_simple_rnn_while_placeholder_2@sequential/simple_rnn/while/simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul5sequential/simple_rnn/while/simple_rnn_cell/mul_1:z:0Ksequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/sequential/simple_rnn/while/simple_rnn_cell/addAddV2<sequential/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0>sequential/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0sequential/simple_rnn/while/simple_rnn_cell/TanhTanh3sequential/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_simple_rnn_while_placeholder_1'sequential_simple_rnn_while_placeholder4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���c
!sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential/simple_rnn/while/addAddV2'sequential_simple_rnn_while_placeholder*sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!sequential/simple_rnn/while/add_1AddV2Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counter,sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: �
$sequential/simple_rnn/while/IdentityIdentity%sequential/simple_rnn/while/add_1:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: �
&sequential/simple_rnn/while/Identity_1IdentityJsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: �
&sequential/simple_rnn/while/Identity_2Identity#sequential/simple_rnn/while/add:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: �
&sequential/simple_rnn/while/Identity_3IdentityPsequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: �
&sequential/simple_rnn/while/Identity_4Identity4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0!^sequential/simple_rnn/while/NoOp*
T0*(
_output_shapes
:�����������
 sequential/simple_rnn/while/NoOpNoOpC^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0"Y
&sequential_simple_rnn_while_identity_1/sequential/simple_rnn/while/Identity_1:output:0"Y
&sequential_simple_rnn_while_identity_2/sequential/simple_rnn/while/Identity_2:output:0"Y
&sequential_simple_rnn_while_identity_3/sequential/simple_rnn/while/Identity_3:output:0"Y
&sequential_simple_rnn_while_identity_4/sequential/simple_rnn/while/Identity_4:output:0"�
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0"�
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"�
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2�
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2�
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2�
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�	
�
+__inference_sequential_layer_call_fn_822086
time_distributed_input
unknown:	?�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�?
	unknown_3:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltime_distributed_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_822073|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
4
_output_shapes"
 :������������������
0
_user_specified_nametime_distributed_input
�3
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_821702

inputs)
simple_rnn_cell_821627:	?�%
simple_rnn_cell_821629:	�*
simple_rnn_cell_821631:
��
identity��'simple_rnn_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask�
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_821627simple_rnn_cell_821629simple_rnn_cell_821631*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821626n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_821627simple_rnn_cell_821629simple_rnn_cell_821631*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_821639*
condR
while_cond_821638*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:�������������������x
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�
�
+__inference_simple_rnn_layer_call_fn_822986

inputs
unknown:	?�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822027}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_822073

inputs$
simple_rnn_822028:	?� 
simple_rnn_822030:	�%
simple_rnn_822032:
��
dense_822067:	�?
dense_822069:?
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_821540o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0simple_rnn_822028simple_rnn_822030simple_rnn_822032*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822027�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_822067dense_822069*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_822066�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�E
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823401

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	?�>
/simple_rnn_cell_biasadd_readvariableop_resource:	�D
0simple_rnn_cell_matmul_1_readvariableop_resource:
��
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_maskg
simple_rnn_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:d
simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_likeFill(simple_rnn_cell/ones_like/Shape:output:0(simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?_
!simple_rnn_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_like_1Fill*simple_rnn_cell/ones_like_1/Shape:output:0*simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mulMulstrided_slice_2:output:0"simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
simple_rnn_cell/MatMulMatMulsimple_rnn_cell/mul:z:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mul_1Mulzeros:output:0$simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell/MatMul_1MatMulsimple_rnn_cell/mul_1:z:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������h
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_823327*
condR
while_cond_823326*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_822624

inputsL
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:	?�I
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	�O
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
��:
'dense_tensordot_readvariableop_resource:	�?3
%dense_biasadd_readvariableop_resource:?
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�simple_rnn/while�0time_distributed/category_encoding/Assert/AssertL
time_distributed/ShapeShapeinputs*
T0*
_output_shapes
:n
$time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
time_distributed/strided_sliceStridedSlicetime_distributed/Shape:output:0-time_distributed/strided_slice/stack:output:0/time_distributed/strided_slice/stack_1:output:0/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������y
(time_distributed/category_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&time_distributed/category_encoding/MaxMax!time_distributed/Reshape:output:01time_distributed/category_encoding/Const:output:0*
T0*
_output_shapes
: {
*time_distributed/category_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&time_distributed/category_encoding/MinMin!time_distributed/Reshape:output:03time_distributed/category_encoding/Const_1:output:0*
T0*
_output_shapes
: k
)time_distributed/category_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :?�
'time_distributed/category_encoding/CastCast2time_distributed/category_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*time_distributed/category_encoding/GreaterGreater+time_distributed/category_encoding/Cast:y:0/time_distributed/category_encoding/Max:output:0*
T0*
_output_shapes
: m
+time_distributed/category_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : �
)time_distributed/category_encoding/Cast_1Cast4time_distributed/category_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
/time_distributed/category_encoding/GreaterEqualGreaterEqual/time_distributed/category_encoding/Min:output:0-time_distributed/category_encoding/Cast_1:y:0*
T0*
_output_shapes
: �
-time_distributed/category_encoding/LogicalAnd
LogicalAnd.time_distributed/category_encoding/Greater:z:03time_distributed/category_encoding/GreaterEqual:z:0*
_output_shapes
: �
/time_distributed/category_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
7time_distributed/category_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
0time_distributed/category_encoding/Assert/AssertAssert1time_distributed/category_encoding/LogicalAnd:z:0@time_distributed/category_encoding/Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 �
0time_distributed/category_encoding/bincount/CastCast!time_distributed/Reshape:output:01^time_distributed/category_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:����������
1time_distributed/category_encoding/bincount/ShapeShape4time_distributed/category_encoding/bincount/Cast:y:0*
T0*
_output_shapes
:�
1time_distributed/category_encoding/bincount/ConstConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
0time_distributed/category_encoding/bincount/ProdProd:time_distributed/category_encoding/bincount/Shape:output:0:time_distributed/category_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
5time_distributed/category_encoding/bincount/Greater/yConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
3time_distributed/category_encoding/bincount/GreaterGreater9time_distributed/category_encoding/bincount/Prod:output:0>time_distributed/category_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
2time_distributed/category_encoding/bincount/Cast_1Cast7time_distributed/category_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
3time_distributed/category_encoding/bincount/Const_1Const1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
/time_distributed/category_encoding/bincount/MaxMax4time_distributed/category_encoding/bincount/Cast:y:0<time_distributed/category_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: �
1time_distributed/category_encoding/bincount/add/yConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
/time_distributed/category_encoding/bincount/addAddV28time_distributed/category_encoding/bincount/Max:output:0:time_distributed/category_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
/time_distributed/category_encoding/bincount/mulMul6time_distributed/category_encoding/bincount/Cast_1:y:03time_distributed/category_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
5time_distributed/category_encoding/bincount/minlengthConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
3time_distributed/category_encoding/bincount/MaximumMaximum>time_distributed/category_encoding/bincount/minlength:output:03time_distributed/category_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
5time_distributed/category_encoding/bincount/maxlengthConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
3time_distributed/category_encoding/bincount/MinimumMinimum>time_distributed/category_encoding/bincount/maxlength:output:07time_distributed/category_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
3time_distributed/category_encoding/bincount/Const_2Const1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
9time_distributed/category_encoding/bincount/DenseBincountDenseBincount4time_distributed/category_encoding/bincount/Cast:y:07time_distributed/category_encoding/bincount/Minimum:z:0<time_distributed/category_encoding/bincount/Const_2:output:0*
T0*

Tidx0*'
_output_shapes
:���������?*
binary_output(m
"time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������d
"time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?�
 time_distributed/Reshape_1/shapePack+time_distributed/Reshape_1/shape/0:output:0'time_distributed/strided_slice:output:0+time_distributed/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:�
time_distributed/Reshape_1ReshapeBtime_distributed/category_encoding/bincount/DenseBincount:output:0)time_distributed/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������?q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/Reshape_2Reshapeinputs)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������c
simple_rnn/ShapeShape#time_distributed/Reshape_1:output:0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:����������n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn/transpose	Transpose#time_distributed/Reshape_1:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������?Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask}
*simple_rnn/simple_rnn_cell/ones_like/ShapeShape#simple_rnn/strided_slice_2:output:0*
T0*
_output_shapes
:o
*simple_rnn/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$simple_rnn/simple_rnn_cell/ones_likeFill3simple_rnn/simple_rnn_cell/ones_like/Shape:output:03simple_rnn/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?u
,simple_rnn/simple_rnn_cell/ones_like_1/ShapeShapesimple_rnn/zeros:output:0*
T0*
_output_shapes
:q
,simple_rnn/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&simple_rnn/simple_rnn_cell/ones_like_1Fill5simple_rnn/simple_rnn_cell/ones_like_1/Shape:output:05simple_rnn/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
simple_rnn/simple_rnn_cell/mulMul#simple_rnn/strided_slice_2:output:0-simple_rnn/simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
!simple_rnn/simple_rnn_cell/MatMulMatMul"simple_rnn/simple_rnn_cell/mul:z:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 simple_rnn/simple_rnn_cell/mul_1Mulsimple_rnn/zeros:output:0/simple_rnn/simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#simple_rnn/simple_rnn_cell/MatMul_1MatMul$simple_rnn/simple_rnn_cell/mul_1:z:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������~
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *(
body R
simple_rnn_while_body_822523*(
cond R
simple_rnn_while_cond_822522*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�?*
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
valueB"       _
dense/Tensordot/ShapeShapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:_
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
dense/Tensordot/transpose	Transposesimple_rnn/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
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
T0*4
_output_shapes"
 :������������������?~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������?o
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������?s
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������?�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while1^time_distributed/category_encoding/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2d
0time_distributed/category_encoding/Assert/Assert0time_distributed/category_encoding/Assert/Assert:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
A__inference_dense_layer_call_and_return_conditional_losses_822066

inputs4
!tensordot_readvariableop_resource:	�?-
biasadd_readvariableop_resource:?
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�?*
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
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
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
!:��������������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
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
 :������������������?r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������?c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������?m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������?z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�X
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822265

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	?�>
/simple_rnn_cell_biasadd_readvariableop_resource:	�D
0simple_rnn_cell_matmul_1_readvariableop_resource:
��
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_maskg
simple_rnn_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:d
simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_likeFill(simple_rnn_cell/ones_like/Shape:output:0(simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?b
simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell/dropout/MulMul"simple_rnn_cell/ones_like:output:0&simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?o
simple_rnn_cell/dropout/ShapeShape"simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
4simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform&simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0k
&simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
$simple_rnn_cell/dropout/GreaterEqualGreaterEqual=simple_rnn_cell/dropout/random_uniform/RandomUniform:output:0/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
simple_rnn_cell/dropout/CastCast(simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
simple_rnn_cell/dropout/Mul_1Mulsimple_rnn_cell/dropout/Mul:z:0 simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?_
!simple_rnn_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_like_1Fill*simple_rnn_cell/ones_like_1/Shape:output:0*simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������d
simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell/dropout_1/MulMul$simple_rnn_cell/ones_like_1:output:0(simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:����������s
simple_rnn_cell/dropout_1/ShapeShape$simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
6simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform(simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0m
(simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
&simple_rnn_cell/dropout_1/GreaterEqualGreaterEqual?simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:01simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/dropout_1/CastCast*simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
simple_rnn_cell/dropout_1/Mul_1Mul!simple_rnn_cell/dropout_1/Mul:z:0"simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mulMulstrided_slice_2:output:0!simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
simple_rnn_cell/MatMulMatMulsimple_rnn_cell/mul:z:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mul_1Mulzeros:output:0#simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell/MatMul_1MatMulsimple_rnn_cell/mul_1:z:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������h
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_822175*
condR
while_cond_822174*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�
�
while_cond_821638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_821638___redundant_placeholder04
0while_while_cond_821638___redundant_placeholder14
0while_while_cond_821638___redundant_placeholder24
0while_while_cond_821638___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
&__inference_dense_layer_call_fn_823566

inputs
unknown:	�?
	unknown_0:?
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_822066|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�
|
M__inference_category_encoding_layer_call_and_return_conditional_losses_823637

inputs
identity��Assert/AssertV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       C
MaxMaxinputsConst:output:0*
T0*
_output_shapes
: X
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       E
MinMininputsConst_1:output:0*
T0*
_output_shapes
: H
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :?M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: K
GreaterGreaterCast:y:0Max:output:0*
T0*
_output_shapes
: J
Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: W
GreaterEqualGreaterEqualMin:output:0
Cast_1:y:0*
T0*
_output_shapes
: O

LogicalAnd
LogicalAndGreater:z:0GreaterEqual:z:0*
_output_shapes
: �
Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63h
Assert/AssertAssertLogicalAnd:z:0Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 n
bincount/CastCastinputs^Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������O
bincount/ShapeShapebincount/Cast:y:0*
T0*
_output_shapes
:h
bincount/ConstConst^Assert/Assert*
_output_shapes
:*
dtype0*
valueB: h
bincount/ProdProdbincount/Shape:output:0bincount/Const:output:0*
T0*
_output_shapes
: d
bincount/Greater/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B : q
bincount/GreaterGreaterbincount/Prod:output:0bincount/Greater/y:output:0*
T0*
_output_shapes
: ]
bincount/Cast_1Castbincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: q
bincount/Const_1Const^Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       b
bincount/MaxMaxbincount/Cast:y:0bincount/Const_1:output:0*
T0*
_output_shapes
: `
bincount/add/yConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :f
bincount/addAddV2bincount/Max:output:0bincount/add/y:output:0*
T0*
_output_shapes
: [
bincount/mulMulbincount/Cast_1:y:0bincount/add:z:0*
T0*
_output_shapes
: d
bincount/minlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?k
bincount/MaximumMaximumbincount/minlength:output:0bincount/mul:z:0*
T0*
_output_shapes
: d
bincount/maxlengthConst^Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?o
bincount/MinimumMinimumbincount/maxlength:output:0bincount/Maximum:z:0*
T0*
_output_shapes
: c
bincount/Const_2Const^Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
bincount/DenseBincountDenseBincountbincount/Cast:y:0bincount/Minimum:z:0bincount/Const_2:output:0*
T0*

Tidx0*'
_output_shapes
:���������?*
binary_output(n
IdentityIdentitybincount/DenseBincount:output:0^NoOp*
T0*'
_output_shapes
:���������?V
NoOpNoOp^Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������2
Assert/AssertAssert/Assert:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_823326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_823326___redundant_placeholder04
0while_while_cond_823326___redundant_placeholder14
0while_while_cond_823326___redundant_placeholder24
0while_while_cond_823326___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821626

inputs

states1
matmul_readvariableop_resource:	?�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������?G
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:���������?u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
mul_1Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0q
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
��
�
F__inference_sequential_layer_call_and_return_conditional_losses_822851

inputsL
9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:	?�I
:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:	�O
;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:
��:
'dense_tensordot_readvariableop_resource:	�?3
%dense_biasadd_readvariableop_resource:?
identity��dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp�0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp�2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp�simple_rnn/while�0time_distributed/category_encoding/Assert/AssertL
time_distributed/ShapeShapeinputs*
T0*
_output_shapes
:n
$time_distributed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&time_distributed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&time_distributed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
time_distributed/strided_sliceStridedSlicetime_distributed/Shape:output:0-time_distributed/strided_slice/stack:output:0/time_distributed/strided_slice/stack_1:output:0/time_distributed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/ReshapeReshapeinputs'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:���������y
(time_distributed/category_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&time_distributed/category_encoding/MaxMax!time_distributed/Reshape:output:01time_distributed/category_encoding/Const:output:0*
T0*
_output_shapes
: {
*time_distributed/category_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&time_distributed/category_encoding/MinMin!time_distributed/Reshape:output:03time_distributed/category_encoding/Const_1:output:0*
T0*
_output_shapes
: k
)time_distributed/category_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :?�
'time_distributed/category_encoding/CastCast2time_distributed/category_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*time_distributed/category_encoding/GreaterGreater+time_distributed/category_encoding/Cast:y:0/time_distributed/category_encoding/Max:output:0*
T0*
_output_shapes
: m
+time_distributed/category_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : �
)time_distributed/category_encoding/Cast_1Cast4time_distributed/category_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
/time_distributed/category_encoding/GreaterEqualGreaterEqual/time_distributed/category_encoding/Min:output:0-time_distributed/category_encoding/Cast_1:y:0*
T0*
_output_shapes
: �
-time_distributed/category_encoding/LogicalAnd
LogicalAnd.time_distributed/category_encoding/Greater:z:03time_distributed/category_encoding/GreaterEqual:z:0*
_output_shapes
: �
/time_distributed/category_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
7time_distributed/category_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
0time_distributed/category_encoding/Assert/AssertAssert1time_distributed/category_encoding/LogicalAnd:z:0@time_distributed/category_encoding/Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 �
0time_distributed/category_encoding/bincount/CastCast!time_distributed/Reshape:output:01^time_distributed/category_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:����������
1time_distributed/category_encoding/bincount/ShapeShape4time_distributed/category_encoding/bincount/Cast:y:0*
T0*
_output_shapes
:�
1time_distributed/category_encoding/bincount/ConstConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
0time_distributed/category_encoding/bincount/ProdProd:time_distributed/category_encoding/bincount/Shape:output:0:time_distributed/category_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
5time_distributed/category_encoding/bincount/Greater/yConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
3time_distributed/category_encoding/bincount/GreaterGreater9time_distributed/category_encoding/bincount/Prod:output:0>time_distributed/category_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
2time_distributed/category_encoding/bincount/Cast_1Cast7time_distributed/category_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
3time_distributed/category_encoding/bincount/Const_1Const1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
/time_distributed/category_encoding/bincount/MaxMax4time_distributed/category_encoding/bincount/Cast:y:0<time_distributed/category_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: �
1time_distributed/category_encoding/bincount/add/yConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
/time_distributed/category_encoding/bincount/addAddV28time_distributed/category_encoding/bincount/Max:output:0:time_distributed/category_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
/time_distributed/category_encoding/bincount/mulMul6time_distributed/category_encoding/bincount/Cast_1:y:03time_distributed/category_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
5time_distributed/category_encoding/bincount/minlengthConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
3time_distributed/category_encoding/bincount/MaximumMaximum>time_distributed/category_encoding/bincount/minlength:output:03time_distributed/category_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
5time_distributed/category_encoding/bincount/maxlengthConst1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
3time_distributed/category_encoding/bincount/MinimumMinimum>time_distributed/category_encoding/bincount/maxlength:output:07time_distributed/category_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
3time_distributed/category_encoding/bincount/Const_2Const1^time_distributed/category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
9time_distributed/category_encoding/bincount/DenseBincountDenseBincount4time_distributed/category_encoding/bincount/Cast:y:07time_distributed/category_encoding/bincount/Minimum:z:0<time_distributed/category_encoding/bincount/Const_2:output:0*
T0*

Tidx0*'
_output_shapes
:���������?*
binary_output(m
"time_distributed/Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������d
"time_distributed/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?�
 time_distributed/Reshape_1/shapePack+time_distributed/Reshape_1/shape/0:output:0'time_distributed/strided_slice:output:0+time_distributed/Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:�
time_distributed/Reshape_1ReshapeBtime_distributed/category_encoding/bincount/DenseBincount:output:0)time_distributed/Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������?q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/Reshape_2Reshapeinputs)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������c
simple_rnn/ShapeShape#time_distributed/Reshape_1:output:0*
T0*
_output_shapes
:h
simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_sliceStridedSlicesimple_rnn/Shape:output:0'simple_rnn/strided_slice/stack:output:0)simple_rnn/strided_slice/stack_1:output:0)simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
simple_rnn/zeros/packedPack!simple_rnn/strided_slice:output:0"simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn/zerosFill simple_rnn/zeros/packed:output:0simple_rnn/zeros/Const:output:0*
T0*(
_output_shapes
:����������n
simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn/transpose	Transpose#time_distributed/Reshape_1:output:0"simple_rnn/transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������?Z
simple_rnn/Shape_1Shapesimple_rnn/transpose:y:0*
T0*
_output_shapes
:j
 simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_slice_1StridedSlicesimple_rnn/Shape_1:output:0)simple_rnn/strided_slice_1/stack:output:0+simple_rnn/strided_slice_1/stack_1:output:0+simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
&simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn/TensorArrayV2TensorListReserve/simple_rnn/TensorArrayV2/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
@simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
2simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn/transpose:y:0Isimple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���j
 simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_slice_2StridedSlicesimple_rnn/transpose:y:0)simple_rnn/strided_slice_2/stack:output:0+simple_rnn/strided_slice_2/stack_1:output:0+simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_mask}
*simple_rnn/simple_rnn_cell/ones_like/ShapeShape#simple_rnn/strided_slice_2:output:0*
T0*
_output_shapes
:o
*simple_rnn/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$simple_rnn/simple_rnn_cell/ones_likeFill3simple_rnn/simple_rnn_cell/ones_like/Shape:output:03simple_rnn/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?m
(simple_rnn/simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
&simple_rnn/simple_rnn_cell/dropout/MulMul-simple_rnn/simple_rnn_cell/ones_like:output:01simple_rnn/simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?�
(simple_rnn/simple_rnn_cell/dropout/ShapeShape-simple_rnn/simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
?simple_rnn/simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform1simple_rnn/simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0v
1simple_rnn/simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
/simple_rnn/simple_rnn_cell/dropout/GreaterEqualGreaterEqualHsimple_rnn/simple_rnn_cell/dropout/random_uniform/RandomUniform:output:0:simple_rnn/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
'simple_rnn/simple_rnn_cell/dropout/CastCast3simple_rnn/simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
(simple_rnn/simple_rnn_cell/dropout/Mul_1Mul*simple_rnn/simple_rnn_cell/dropout/Mul:z:0+simple_rnn/simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?u
,simple_rnn/simple_rnn_cell/ones_like_1/ShapeShapesimple_rnn/zeros:output:0*
T0*
_output_shapes
:q
,simple_rnn/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&simple_rnn/simple_rnn_cell/ones_like_1Fill5simple_rnn/simple_rnn_cell/ones_like_1/Shape:output:05simple_rnn/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������o
*simple_rnn/simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
(simple_rnn/simple_rnn_cell/dropout_1/MulMul/simple_rnn/simple_rnn_cell/ones_like_1:output:03simple_rnn/simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:�����������
*simple_rnn/simple_rnn_cell/dropout_1/ShapeShape/simple_rnn/simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
Asimple_rnn/simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform3simple_rnn/simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0x
3simple_rnn/simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
1simple_rnn/simple_rnn_cell/dropout_1/GreaterEqualGreaterEqualJsimple_rnn/simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:0<simple_rnn/simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
)simple_rnn/simple_rnn_cell/dropout_1/CastCast5simple_rnn/simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
*simple_rnn/simple_rnn_cell/dropout_1/Mul_1Mul,simple_rnn/simple_rnn_cell/dropout_1/Mul:z:0-simple_rnn/simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
simple_rnn/simple_rnn_cell/mulMul#simple_rnn/strided_slice_2:output:0,simple_rnn/simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp9simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
!simple_rnn/simple_rnn_cell/MatMulMatMul"simple_rnn/simple_rnn_cell/mul:z:08simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"simple_rnn/simple_rnn_cell/BiasAddBiasAdd+simple_rnn/simple_rnn_cell/MatMul:product:09simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 simple_rnn/simple_rnn_cell/mul_1Mulsimple_rnn/zeros:output:0.simple_rnn/simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#simple_rnn/simple_rnn_cell/MatMul_1MatMul$simple_rnn/simple_rnn_cell/mul_1:z:0:simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn/simple_rnn_cell/addAddV2+simple_rnn/simple_rnn_cell/BiasAdd:output:0-simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������~
simple_rnn/simple_rnn_cell/TanhTanh"simple_rnn/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������y
(simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
simple_rnn/TensorArrayV2_1TensorListReserve1simple_rnn/TensorArrayV2_1/element_shape:output:0#simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���Q
simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : n
#simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������_
simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn/whileWhile&simple_rnn/while/loop_counter:output:0,simple_rnn/while/maximum_iterations:output:0simple_rnn/time:output:0#simple_rnn/TensorArrayV2_1:handle:0simple_rnn/zeros:output:0#simple_rnn/strided_slice_1:output:0Bsimple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:09simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource;simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *(
body R
simple_rnn_while_body_822734*(
cond R
simple_rnn_while_cond_822733*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
;simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
-simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn/while:output:3Dsimple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0s
 simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������l
"simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn/strided_slice_3StridedSlice6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0)simple_rnn/strided_slice_3/stack:output:0+simple_rnn/strided_slice_3/stack_1:output:0+simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskp
simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn/transpose_1	Transpose6simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0$simple_rnn/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�?*
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
valueB"       _
dense/Tensordot/ShapeShapesimple_rnn/transpose_1:y:0*
T0*
_output_shapes
:_
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
dense/Tensordot/transpose	Transposesimple_rnn/transpose_1:y:0dense/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
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
T0*4
_output_shapes"
 :������������������?~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������?o
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*4
_output_shapes"
 :������������������?s
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������?�
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp2^simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1^simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp3^simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^simple_rnn/while1^time_distributed/category_encoding/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2f
1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp1simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2d
0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp0simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2h
2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2$
simple_rnn/whilesimple_rnn/while2d
0time_distributed/category_encoding/Assert/Assert0time_distributed/category_encoding/Assert/Assert:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_823466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_823466___redundant_placeholder04
0while_while_cond_823466___redundant_placeholder14
0while_while_cond_823466___redundant_placeholder24
0while_while_cond_823466___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�2
�
L__inference_time_distributed_layer_call_and_return_conditional_losses_822953

inputs
identity��category_encoding/Assert/Assert;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
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
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:���������h
category_encoding/ConstConst*
_output_shapes
:*
dtype0*
valueB"       q
category_encoding/MaxMaxReshape:output:0 category_encoding/Const:output:0*
T0*
_output_shapes
: j
category_encoding/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       s
category_encoding/MinMinReshape:output:0"category_encoding/Const_1:output:0*
T0*
_output_shapes
: Z
category_encoding/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :?q
category_encoding/CastCast!category_encoding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
category_encoding/GreaterGreatercategory_encoding/Cast:y:0category_encoding/Max:output:0*
T0*
_output_shapes
: \
category_encoding/Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B : u
category_encoding/Cast_1Cast#category_encoding/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
category_encoding/GreaterEqualGreaterEqualcategory_encoding/Min:output:0category_encoding/Cast_1:y:0*
T0*
_output_shapes
: �
category_encoding/LogicalAnd
LogicalAndcategory_encoding/Greater:z:0"category_encoding/GreaterEqual:z:0*
_output_shapes
: �
category_encoding/Assert/ConstConst*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
&category_encoding/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*^
valueUBS BMInput values must be in the range 0 <= values < num_tokens with num_tokens=63�
category_encoding/Assert/AssertAssert category_encoding/LogicalAnd:z:0/category_encoding/Assert/Assert/data_0:output:0*

T
2*
_output_shapes
 �
category_encoding/bincount/CastCastReshape:output:0 ^category_encoding/Assert/Assert*

DstT0*

SrcT0*'
_output_shapes
:���������s
 category_encoding/bincount/ShapeShape#category_encoding/bincount/Cast:y:0*
T0*
_output_shapes
:�
 category_encoding/bincount/ConstConst ^category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB: �
category_encoding/bincount/ProdProd)category_encoding/bincount/Shape:output:0)category_encoding/bincount/Const:output:0*
T0*
_output_shapes
: �
$category_encoding/bincount/Greater/yConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B : �
"category_encoding/bincount/GreaterGreater(category_encoding/bincount/Prod:output:0-category_encoding/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
!category_encoding/bincount/Cast_1Cast&category_encoding/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
"category_encoding/bincount/Const_1Const ^category_encoding/Assert/Assert*
_output_shapes
:*
dtype0*
valueB"       �
category_encoding/bincount/MaxMax#category_encoding/bincount/Cast:y:0+category_encoding/bincount/Const_1:output:0*
T0*
_output_shapes
: �
 category_encoding/bincount/add/yConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :�
category_encoding/bincount/addAddV2'category_encoding/bincount/Max:output:0)category_encoding/bincount/add/y:output:0*
T0*
_output_shapes
: �
category_encoding/bincount/mulMul%category_encoding/bincount/Cast_1:y:0"category_encoding/bincount/add:z:0*
T0*
_output_shapes
: �
$category_encoding/bincount/minlengthConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
"category_encoding/bincount/MaximumMaximum-category_encoding/bincount/minlength:output:0"category_encoding/bincount/mul:z:0*
T0*
_output_shapes
: �
$category_encoding/bincount/maxlengthConst ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
value	B :?�
"category_encoding/bincount/MinimumMinimum-category_encoding/bincount/maxlength:output:0&category_encoding/bincount/Maximum:z:0*
T0*
_output_shapes
: �
"category_encoding/bincount/Const_2Const ^category_encoding/Assert/Assert*
_output_shapes
: *
dtype0*
valueB �
(category_encoding/bincount/DenseBincountDenseBincount#category_encoding/bincount/Cast:y:0&category_encoding/bincount/Minimum:z:0+category_encoding/bincount/Const_2:output:0*
T0*

Tidx0*'
_output_shapes
:���������?*
binary_output(\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
���������S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :?�
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:�
	Reshape_1Reshape1category_encoding/bincount/DenseBincount:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :������������������?n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?h
NoOpNoOp ^category_encoding/Assert/Assert*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������2B
category_encoding/Assert/Assertcategory_encoding/Assert/Assert:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�X
�
simple_rnn_while_body_8227342
.simple_rnn_while_simple_rnn_while_loop_counter8
4simple_rnn_while_simple_rnn_while_maximum_iterations 
simple_rnn_while_placeholder"
simple_rnn_while_placeholder_1"
simple_rnn_while_placeholder_21
-simple_rnn_while_simple_rnn_strided_slice_1_0m
isimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0T
Asimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�Q
Bsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�W
Csimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
simple_rnn_while_identity
simple_rnn_while_identity_1
simple_rnn_while_identity_2
simple_rnn_while_identity_3
simple_rnn_while_identity_4/
+simple_rnn_while_simple_rnn_strided_slice_1k
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorR
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:	?�O
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:	�U
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:
����7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp�6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp�8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp�
Bsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
4simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_while_placeholderKsimple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
0simple_rnn/while/simple_rnn_cell/ones_like/ShapeShape;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:u
0simple_rnn/while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*simple_rnn/while/simple_rnn_cell/ones_likeFill9simple_rnn/while/simple_rnn_cell/ones_like/Shape:output:09simple_rnn/while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?s
.simple_rnn/while/simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
,simple_rnn/while/simple_rnn_cell/dropout/MulMul3simple_rnn/while/simple_rnn_cell/ones_like:output:07simple_rnn/while/simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?�
.simple_rnn/while/simple_rnn_cell/dropout/ShapeShape3simple_rnn/while/simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
Esimple_rnn/while/simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform7simple_rnn/while/simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0|
7simple_rnn/while/simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
5simple_rnn/while/simple_rnn_cell/dropout/GreaterEqualGreaterEqualNsimple_rnn/while/simple_rnn_cell/dropout/random_uniform/RandomUniform:output:0@simple_rnn/while/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
-simple_rnn/while/simple_rnn_cell/dropout/CastCast9simple_rnn/while/simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
.simple_rnn/while/simple_rnn_cell/dropout/Mul_1Mul0simple_rnn/while/simple_rnn_cell/dropout/Mul:z:01simple_rnn/while/simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?�
2simple_rnn/while/simple_rnn_cell/ones_like_1/ShapeShapesimple_rnn_while_placeholder_2*
T0*
_output_shapes
:w
2simple_rnn/while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,simple_rnn/while/simple_rnn_cell/ones_like_1Fill;simple_rnn/while/simple_rnn_cell/ones_like_1/Shape:output:0;simple_rnn/while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������u
0simple_rnn/while/simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
.simple_rnn/while/simple_rnn_cell/dropout_1/MulMul5simple_rnn/while/simple_rnn_cell/ones_like_1:output:09simple_rnn/while/simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:�����������
0simple_rnn/while/simple_rnn_cell/dropout_1/ShapeShape5simple_rnn/while/simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
Gsimple_rnn/while/simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform9simple_rnn/while/simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0~
9simple_rnn/while/simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
7simple_rnn/while/simple_rnn_cell/dropout_1/GreaterEqualGreaterEqualPsimple_rnn/while/simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:0Bsimple_rnn/while/simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
/simple_rnn/while/simple_rnn_cell/dropout_1/CastCast;simple_rnn/while/simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
0simple_rnn/while/simple_rnn_cell/dropout_1/Mul_1Mul2simple_rnn/while/simple_rnn_cell/dropout_1/Mul:z:03simple_rnn/while/simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
$simple_rnn/while/simple_rnn_cell/mulMul;simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:02simple_rnn/while/simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
'simple_rnn/while/simple_rnn_cell/MatMulMatMul(simple_rnn/while/simple_rnn_cell/mul:z:0>simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd1simple_rnn/while/simple_rnn_cell/MatMul:product:0?simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn/while/simple_rnn_cell/mul_1Mulsimple_rnn_while_placeholder_24simple_rnn/while/simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)simple_rnn/while/simple_rnn_cell/MatMul_1MatMul*simple_rnn/while/simple_rnn_cell/mul_1:z:0@simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$simple_rnn/while/simple_rnn_cell/addAddV21simple_rnn/while/simple_rnn_cell/BiasAdd:output:03simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
%simple_rnn/while/simple_rnn_cell/TanhTanh(simple_rnn/while/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
5simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsimple_rnn_while_placeholder_1simple_rnn_while_placeholder)simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���X
simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :}
simple_rnn/while/addAddV2simple_rnn_while_placeholdersimple_rnn/while/add/y:output:0*
T0*
_output_shapes
: Z
simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn/while/add_1AddV2.simple_rnn_while_simple_rnn_while_loop_counter!simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: z
simple_rnn/while/IdentityIdentitysimple_rnn/while/add_1:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: �
simple_rnn/while/Identity_1Identity4simple_rnn_while_simple_rnn_while_maximum_iterations^simple_rnn/while/NoOp*
T0*
_output_shapes
: z
simple_rnn/while/Identity_2Identitysimple_rnn/while/add:z:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: �
simple_rnn/while/Identity_3IdentityEsimple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn/while/NoOp*
T0*
_output_shapes
: �
simple_rnn/while/Identity_4Identity)simple_rnn/while/simple_rnn_cell/Tanh:y:0^simple_rnn/while/NoOp*
T0*(
_output_shapes
:�����������
simple_rnn/while/NoOpNoOp8^simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7^simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp9^simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
simple_rnn_while_identity"simple_rnn/while/Identity:output:0"C
simple_rnn_while_identity_1$simple_rnn/while/Identity_1:output:0"C
simple_rnn_while_identity_2$simple_rnn/while/Identity_2:output:0"C
simple_rnn_while_identity_3$simple_rnn/while/Identity_3:output:0"C
simple_rnn_while_identity_4$simple_rnn/while/Identity_4:output:0"�
@simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceBsimple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"�
Asimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceCsimple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"�
?simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceAsimple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"\
+simple_rnn_while_simple_rnn_strided_slice_1-simple_rnn_while_simple_rnn_strided_slice_1_0"�
gsimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensorisimple_rnn_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2r
7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp7simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2p
6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp6simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2t
8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp8simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823690

inputs
states_01
matmul_readvariableop_resource:	?�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������?I
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:���������?u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
mul_1Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0q
MatMul_1MatMul	mul_1:z:0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:����������X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������?:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�I
�
while_body_823187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	?�D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	�J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
����,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
%while/simple_rnn_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:j
%while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/simple_rnn_cell/ones_likeFill.while/simple_rnn_cell/ones_like/Shape:output:0.while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?h
#while/simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
!while/simple_rnn_cell/dropout/MulMul(while/simple_rnn_cell/ones_like:output:0,while/simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?{
#while/simple_rnn_cell/dropout/ShapeShape(while/simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
:while/simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform,while/simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0q
,while/simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
*while/simple_rnn_cell/dropout/GreaterEqualGreaterEqualCwhile/simple_rnn_cell/dropout/random_uniform/RandomUniform:output:05while/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
"while/simple_rnn_cell/dropout/CastCast.while/simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
#while/simple_rnn_cell/dropout/Mul_1Mul%while/simple_rnn_cell/dropout/Mul:z:0&while/simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?j
'while/simple_rnn_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:l
'while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell/ones_like_1Fill0while/simple_rnn_cell/ones_like_1/Shape:output:00while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������j
%while/simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
#while/simple_rnn_cell/dropout_1/MulMul*while/simple_rnn_cell/ones_like_1:output:0.while/simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:����������
%while/simple_rnn_cell/dropout_1/ShapeShape*while/simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
<while/simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0s
.while/simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
,while/simple_rnn_cell/dropout_1/GreaterEqualGreaterEqualEwhile/simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:07while/simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
$while/simple_rnn_cell/dropout_1/CastCast0while/simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
%while/simple_rnn_cell/dropout_1/Mul_1Mul'while/simple_rnn_cell/dropout_1/Mul:z:0(while/simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
while/simple_rnn_cell/MatMulMatMulwhile/simple_rnn_cell/mul:z:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mul_1Mulwhile_placeholder_2)while/simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile/simple_rnn_cell/mul_1:z:05while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������t
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�I
�
while_body_823467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	?�D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	�J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
����,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
%while/simple_rnn_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:j
%while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/simple_rnn_cell/ones_likeFill.while/simple_rnn_cell/ones_like/Shape:output:0.while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?h
#while/simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
!while/simple_rnn_cell/dropout/MulMul(while/simple_rnn_cell/ones_like:output:0,while/simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?{
#while/simple_rnn_cell/dropout/ShapeShape(while/simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
:while/simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform,while/simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0q
,while/simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
*while/simple_rnn_cell/dropout/GreaterEqualGreaterEqualCwhile/simple_rnn_cell/dropout/random_uniform/RandomUniform:output:05while/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
"while/simple_rnn_cell/dropout/CastCast.while/simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
#while/simple_rnn_cell/dropout/Mul_1Mul%while/simple_rnn_cell/dropout/Mul:z:0&while/simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?j
'while/simple_rnn_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:l
'while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell/ones_like_1Fill0while/simple_rnn_cell/ones_like_1/Shape:output:00while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������j
%while/simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
#while/simple_rnn_cell/dropout_1/MulMul*while/simple_rnn_cell/ones_like_1:output:0.while/simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:����������
%while/simple_rnn_cell/dropout_1/ShapeShape*while/simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
<while/simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0s
.while/simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
,while/simple_rnn_cell/dropout_1/GreaterEqualGreaterEqualEwhile/simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:07while/simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
$while/simple_rnn_cell/dropout_1/CastCast0while/simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
%while/simple_rnn_cell/dropout_1/Mul_1Mul'while/simple_rnn_cell/dropout_1/Mul:z:0(while/simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0'while/simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
while/simple_rnn_cell/MatMulMatMulwhile/simple_rnn_cell/mul:z:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mul_1Mulwhile_placeholder_2)while/simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile/simple_rnn_cell/mul_1:z:05while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������t
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
� 
�
while_body_821639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_821661_0:	?�-
while_simple_rnn_cell_821663_0:	�2
while_simple_rnn_cell_821665_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_821661:	?�+
while_simple_rnn_cell_821663:	�0
while_simple_rnn_cell_821665:
����-while/simple_rnn_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_821661_0while_simple_rnn_cell_821663_0while_simple_rnn_cell_821665_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821626�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_821661while_simple_rnn_cell_821661_0">
while_simple_rnn_cell_821663while_simple_rnn_cell_821663_0">
while_simple_rnn_cell_821665while_simple_rnn_cell_821665_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
A__inference_dense_layer_call_and_return_conditional_losses_823597

inputs4
!tensordot_readvariableop_resource:	�?-
biasadd_readvariableop_resource:?
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�?*
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
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
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
!:��������������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������?[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
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
 :������������������?r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:?*
dtype0�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :������������������?c
SoftmaxSoftmaxBiasAdd:output:0*
T0*4
_output_shapes"
 :������������������?m
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*4
_output_shapes"
 :������������������?z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�������������������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:] Y
5
_output_shapes#
!:�������������������
 
_user_specified_nameinputs
�X
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823277
inputs_0A
.simple_rnn_cell_matmul_readvariableop_resource:	?�>
/simple_rnn_cell_biasadd_readvariableop_resource:	�D
0simple_rnn_cell_matmul_1_readvariableop_resource:
��
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_maskg
simple_rnn_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:d
simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_likeFill(simple_rnn_cell/ones_like/Shape:output:0(simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?b
simple_rnn_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell/dropout/MulMul"simple_rnn_cell/ones_like:output:0&simple_rnn_cell/dropout/Const:output:0*
T0*'
_output_shapes
:���������?o
simple_rnn_cell/dropout/ShapeShape"simple_rnn_cell/ones_like:output:0*
T0*
_output_shapes
:�
4simple_rnn_cell/dropout/random_uniform/RandomUniformRandomUniform&simple_rnn_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:���������?*
dtype0k
&simple_rnn_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
$simple_rnn_cell/dropout/GreaterEqualGreaterEqual=simple_rnn_cell/dropout/random_uniform/RandomUniform:output:0/simple_rnn_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������?�
simple_rnn_cell/dropout/CastCast(simple_rnn_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������?�
simple_rnn_cell/dropout/Mul_1Mulsimple_rnn_cell/dropout/Mul:z:0 simple_rnn_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:���������?_
!simple_rnn_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_like_1Fill*simple_rnn_cell/ones_like_1/Shape:output:0*simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:����������d
simple_rnn_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell/dropout_1/MulMul$simple_rnn_cell/ones_like_1:output:0(simple_rnn_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:����������s
simple_rnn_cell/dropout_1/ShapeShape$simple_rnn_cell/ones_like_1:output:0*
T0*
_output_shapes
:�
6simple_rnn_cell/dropout_1/random_uniform/RandomUniformRandomUniform(simple_rnn_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0m
(simple_rnn_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
&simple_rnn_cell/dropout_1/GreaterEqualGreaterEqual?simple_rnn_cell/dropout_1/random_uniform/RandomUniform:output:01simple_rnn_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/dropout_1/CastCast*simple_rnn_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
simple_rnn_cell/dropout_1/Mul_1Mul!simple_rnn_cell/dropout_1/Mul:z:0"simple_rnn_cell/dropout_1/Cast:y:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mulMulstrided_slice_2:output:0!simple_rnn_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������?�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
simple_rnn_cell/MatMulMatMulsimple_rnn_cell/mul:z:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mul_1Mulzeros:output:0#simple_rnn_cell/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:�����������
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell/MatMul_1MatMulsimple_rnn_cell/mul_1:z:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������h
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_823187*
condR
while_cond_823186*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs/0
�
�
+__inference_simple_rnn_layer_call_fn_822997

inputs
unknown:	?�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822265}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�
�
+__inference_simple_rnn_layer_call_fn_822975
inputs_0
unknown:	?�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_821885}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:�������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������?
"
_user_specified_name
inputs/0
�
k
2__inference_category_encoding_layer_call_fn_823602

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_category_encoding_layer_call_and_return_conditional_losses_821533o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�E
�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822027

inputsA
.simple_rnn_cell_matmul_readvariableop_resource:	?�>
/simple_rnn_cell_biasadd_readvariableop_resource:	�D
0simple_rnn_cell_matmul_1_readvariableop_resource:
��
identity��&simple_rnn_cell/BiasAdd/ReadVariableOp�%simple_rnn_cell/MatMul/ReadVariableOp�'simple_rnn_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������?D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������?*
shrink_axis_maskg
simple_rnn_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:d
simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_likeFill(simple_rnn_cell/ones_like/Shape:output:0(simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?_
!simple_rnn_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell/ones_like_1Fill*simple_rnn_cell/ones_like_1/Shape:output:0*simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mulMulstrided_slice_2:output:0"simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype0�
simple_rnn_cell/MatMulMatMulsimple_rnn_cell/mul:z:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/mul_1Mulzeros:output:0$simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell/MatMul_1MatMulsimple_rnn_cell/mul_1:z:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������h
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_821953*
condR
while_cond_821952*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:�������������������*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:�������������������l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:��������������������
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������?: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :������������������?
 
_user_specified_nameinputs
�
�
F__inference_sequential_layer_call_and_return_conditional_losses_822357
time_distributed_input$
simple_rnn_822344:	?� 
simple_rnn_822346:	�%
simple_rnn_822348:
��
dense_822351:	�?
dense_822353:?
identity��dense/StatefulPartitionedCall�"simple_rnn/StatefulPartitionedCall�(time_distributed/StatefulPartitionedCall�
(time_distributed/StatefulPartitionedCallStatefulPartitionedCalltime_distributed_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_821540o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
time_distributed/ReshapeReshapetime_distributed_input'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0simple_rnn_822344simple_rnn_822346simple_rnn_822348*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:�������������������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_simple_rnn_layer_call_and_return_conditional_losses_822027�
dense/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0dense_822351dense_822353*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_822066�
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?�
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:������������������: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall:l h
4
_output_shapes"
 :������������������
0
_user_specified_nametime_distributed_input
�G
�
"__inference__traced_restore_823866
file_prefix0
assignvariableop_dense_kernel:	�?+
assignvariableop_1_dense_bias:?G
4assignvariableop_2_simple_rnn_simple_rnn_cell_kernel:	?�R
>assignvariableop_3_simple_rnn_simple_rnn_cell_recurrent_kernel:
��A
2assignvariableop_4_simple_rnn_simple_rnn_cell_bias:	�)
assignvariableop_5_rmsprop_iter:	 *
 assignvariableop_6_rmsprop_decay: 2
(assignvariableop_7_rmsprop_learning_rate: -
#assignvariableop_8_rmsprop_momentum: (
assignvariableop_9_rmsprop_rho: #
assignvariableop_10_total: #
assignvariableop_11_count: ?
,assignvariableop_12_rmsprop_dense_kernel_rms:	�?8
*assignvariableop_13_rmsprop_dense_bias_rms:?T
Aassignvariableop_14_rmsprop_simple_rnn_simple_rnn_cell_kernel_rms:	?�_
Kassignvariableop_15_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rms:
��N
?assignvariableop_16_rmsprop_simple_rnn_simple_rnn_cell_bias_rms:	�
identity_18��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp4assignvariableop_2_simple_rnn_simple_rnn_cell_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp>assignvariableop_3_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp2assignvariableop_4_simple_rnn_simple_rnn_cell_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_rmsprop_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_rmsprop_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp(assignvariableop_7_rmsprop_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_rmsprop_momentumIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_rmsprop_rhoIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp,assignvariableop_12_rmsprop_dense_kernel_rmsIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_rmsprop_dense_bias_rmsIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpAassignvariableop_14_rmsprop_simple_rnn_simple_rnn_cell_kernel_rmsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpKassignvariableop_15_rmsprop_simple_rnn_simple_rnn_cell_recurrent_kernel_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp?assignvariableop_16_rmsprop_simple_rnn_simple_rnn_cell_bias_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*7
_input_shapes&
$: : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
� 
�
while_body_821822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_821844_0:	?�-
while_simple_rnn_cell_821846_0:	�2
while_simple_rnn_cell_821848_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_821844:	?�+
while_simple_rnn_cell_821846:	�0
while_simple_rnn_cell_821848:
����-while/simple_rnn_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_821844_0while_simple_rnn_cell_821846_0while_simple_rnn_cell_821848_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_821770�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������|

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_821844while_simple_rnn_cell_821844_0">
while_simple_rnn_cell_821846while_simple_rnn_cell_821846_0">
while_simple_rnn_cell_821848while_simple_rnn_cell_821848_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�4
�
while_body_823327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0I
6while_simple_rnn_cell_matmul_readvariableop_resource_0:	?�F
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:	�L
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorG
4while_simple_rnn_cell_matmul_readvariableop_resource:	?�D
5while_simple_rnn_cell_biasadd_readvariableop_resource:	�J
6while_simple_rnn_cell_matmul_1_readvariableop_resource:
����,while/simple_rnn_cell/BiasAdd/ReadVariableOp�+while/simple_rnn_cell/MatMul/ReadVariableOp�-while/simple_rnn_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����?   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������?*
element_dtype0�
%while/simple_rnn_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:j
%while/simple_rnn_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/simple_rnn_cell/ones_likeFill.while/simple_rnn_cell/ones_like/Shape:output:0.while/simple_rnn_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:���������?j
'while/simple_rnn_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:l
'while/simple_rnn_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell/ones_like_1Fill0while/simple_rnn_cell/ones_like_1/Shape:output:00while/simple_rnn_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0(while/simple_rnn_cell/ones_like:output:0*
T0*'
_output_shapes
:���������?�
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?�*
dtype0�
while/simple_rnn_cell/MatMulMatMulwhile/simple_rnn_cell/mul:z:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/mul_1Mulwhile_placeholder_2*while/simple_rnn_cell/ones_like_1:output:0*
T0*(
_output_shapes
:�����������
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/simple_rnn_cell/MatMul_1MatMulwhile/simple_rnn_cell/mul_1:z:05while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*(
_output_shapes
:����������t
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*(
_output_shapes
:�����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_821952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_821952___redundant_placeholder04
0while_while_cond_821952___redundant_placeholder14
0while_while_cond_821952___redundant_placeholder24
0while_while_cond_821952___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
j
1__inference_time_distributed_layer_call_fn_822856

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_821540|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :������������������22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
f
time_distributed_inputL
(serving_default_time_distributed_input:0������������������F
dense=
StatefulPartitionedCall:0������������������?tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	layer"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
C
$0
%1
&2
"3
#4"
trackable_list_wrapper
C
$0
%1
&2
"3
#4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
,trace_0
-trace_1
.trace_2
/trace_32�
+__inference_sequential_layer_call_fn_822086
+__inference_sequential_layer_call_fn_822414
+__inference_sequential_layer_call_fn_822429
+__inference_sequential_layer_call_fn_822338�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 z,trace_0z-trace_1z.trace_2z/trace_3
�
0trace_0
1trace_1
2trace_2
3trace_32�
F__inference_sequential_layer_call_and_return_conditional_losses_822624
F__inference_sequential_layer_call_and_return_conditional_losses_822851
F__inference_sequential_layer_call_and_return_conditional_losses_822357
F__inference_sequential_layer_call_and_return_conditional_losses_822376�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 z0trace_0z1trace_1z2trace_2z3trace_3
�B�
!__inference__wrapped_model_821484time_distributed_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
4iter
	5decay
6learning_rate
7momentum
8rho	"rmsz	#rms{	$rms|	%rms}	&rms~"
	optimizer
,
9serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
?trace_0
@trace_12�
1__inference_time_distributed_layer_call_fn_822856
1__inference_time_distributed_layer_call_fn_822861�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 z?trace_0z@trace_1
�
Atrace_0
Btrace_12�
L__inference_time_distributed_layer_call_and_return_conditional_losses_822907
L__inference_time_distributed_layer_call_and_return_conditional_losses_822953�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 zAtrace_0zBtrace_1
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
5
$0
%1
&2"
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Istates
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32�
+__inference_simple_rnn_layer_call_fn_822964
+__inference_simple_rnn_layer_call_fn_822975
+__inference_simple_rnn_layer_call_fn_822986
+__inference_simple_rnn_layer_call_fn_822997�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
�
Strace_0
Ttrace_1
Utrace_2
Vtrace_32�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823121
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823277
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823401
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823557�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0zTtrace_1zUtrace_2zVtrace_3
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]_random_generator

$kernel
%recurrent_kernel
&bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
ctrace_02�
&__inference_dense_layer_call_fn_823566�
���
FullArgSpec
args�
jself
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
annotations� *
 zctrace_0
�
dtrace_02�
A__inference_dense_layer_call_and_return_conditional_losses_823597�
���
FullArgSpec
args�
jself
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
annotations� *
 zdtrace_0
:	�?2dense/kernel
:?2
dense/bias
4:2	?�2!simple_rnn/simple_rnn_cell/kernel
?:=
��2+simple_rnn/simple_rnn_cell/recurrent_kernel
.:,�2simple_rnn/simple_rnn_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_sequential_layer_call_fn_822086time_distributed_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_822414inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_822429inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
+__inference_sequential_layer_call_fn_822338time_distributed_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_822624inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_822851inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_822357time_distributed_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
F__inference_sequential_layer_call_and_return_conditional_losses_822376time_distributed_input"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
�B�
$__inference_signature_wrapper_822399time_distributed_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_time_distributed_layer_call_fn_822856inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
1__inference_time_distributed_layer_call_fn_822861inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
L__inference_time_distributed_layer_call_and_return_conditional_losses_822907inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
�B�
L__inference_time_distributed_layer_call_and_return_conditional_losses_822953inputs"�
���
FullArgSpec1
args)�&
jself
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
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
ktrace_02�
2__inference_category_encoding_layer_call_fn_823602�
���
FullArgSpec.
args&�#
jself
jinputs
jcount_weights
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
annotations� *
 zktrace_0
�
ltrace_02�
M__inference_category_encoding_layer_call_and_return_conditional_losses_823637�
���
FullArgSpec.
args&�#
jself
jinputs
jcount_weights
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
annotations� *
 zltrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_simple_rnn_layer_call_fn_822964inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_simple_rnn_layer_call_fn_822975inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_simple_rnn_layer_call_fn_822986inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_simple_rnn_layer_call_fn_822997inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823121inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823277inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823401inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823557inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
$0
%1
&2"
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
rtrace_0
strace_12�
0__inference_simple_rnn_cell_layer_call_fn_823651
0__inference_simple_rnn_cell_layer_call_fn_823665�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 zrtrace_0zstrace_1
�
ttrace_0
utrace_12�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823690
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823731�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 zttrace_0zutrace_1
"
_generic_user_object
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
&__inference_dense_layer_call_fn_823566inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
A__inference_dense_layer_call_and_return_conditional_losses_823597inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
N
v	variables
w	keras_api
	xtotal
	ycount"
_tf_keras_metric
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
2__inference_category_encoding_layer_call_fn_823602inputs"�
���
FullArgSpec.
args&�#
jself
jinputs
jcount_weights
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
annotations� *
 
�B�
M__inference_category_encoding_layer_call_and_return_conditional_losses_823637inputs"�
���
FullArgSpec.
args&�#
jself
jinputs
jcount_weights
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
annotations� *
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
�B�
0__inference_simple_rnn_cell_layer_call_fn_823651inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 
�B�
0__inference_simple_rnn_cell_layer_call_fn_823665inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 
�B�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823690inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 
�B�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823731inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

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
annotations� *
 
.
x0
y1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
):'	�?2RMSprop/dense/kernel/rms
": ?2RMSprop/dense/bias/rms
>:<	?�2-RMSprop/simple_rnn/simple_rnn_cell/kernel/rms
I:G
��27RMSprop/simple_rnn/simple_rnn_cell/recurrent_kernel/rms
8:6�2+RMSprop/simple_rnn/simple_rnn_cell/bias/rms�
!__inference__wrapped_model_821484�$&%"#L�I
B�?
=�:
time_distributed_input������������������
� ":�7
5
dense,�)
dense������������������?�
M__inference_category_encoding_layer_call_and_return_conditional_losses_823637\3�0
)�&
 �
inputs���������

 
� "%�"
�
0���������?
� �
2__inference_category_encoding_layer_call_fn_823602O3�0
)�&
 �
inputs���������

 
� "����������?�
A__inference_dense_layer_call_and_return_conditional_losses_823597w"#=�:
3�0
.�+
inputs�������������������
� "2�/
(�%
0������������������?
� �
&__inference_dense_layer_call_fn_823566j"#=�:
3�0
.�+
inputs�������������������
� "%�"������������������?�
F__inference_sequential_layer_call_and_return_conditional_losses_822357�$&%"#T�Q
J�G
=�:
time_distributed_input������������������
p 

 
� "2�/
(�%
0������������������?
� �
F__inference_sequential_layer_call_and_return_conditional_losses_822376�$&%"#T�Q
J�G
=�:
time_distributed_input������������������
p

 
� "2�/
(�%
0������������������?
� �
F__inference_sequential_layer_call_and_return_conditional_losses_822624�$&%"#D�A
:�7
-�*
inputs������������������
p 

 
� "2�/
(�%
0������������������?
� �
F__inference_sequential_layer_call_and_return_conditional_losses_822851�$&%"#D�A
:�7
-�*
inputs������������������
p

 
� "2�/
(�%
0������������������?
� �
+__inference_sequential_layer_call_fn_822086�$&%"#T�Q
J�G
=�:
time_distributed_input������������������
p 

 
� "%�"������������������?�
+__inference_sequential_layer_call_fn_822338�$&%"#T�Q
J�G
=�:
time_distributed_input������������������
p

 
� "%�"������������������?�
+__inference_sequential_layer_call_fn_822414t$&%"#D�A
:�7
-�*
inputs������������������
p 

 
� "%�"������������������?�
+__inference_sequential_layer_call_fn_822429t$&%"#D�A
:�7
-�*
inputs������������������
p

 
� "%�"������������������?�
$__inference_signature_wrapper_822399�$&%"#f�c
� 
\�Y
W
time_distributed_input=�:
time_distributed_input������������������":�7
5
dense,�)
dense������������������?�
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823690�$&%]�Z
S�P
 �
inputs���������?
(�%
#� 
states/0����������
p 
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_823731�$&%]�Z
S�P
 �
inputs���������?
(�%
#� 
states/0����������
p
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
0__inference_simple_rnn_cell_layer_call_fn_823651�$&%]�Z
S�P
 �
inputs���������?
(�%
#� 
states/0����������
p 
� "F�C
�
0����������
#� 
�
1/0�����������
0__inference_simple_rnn_cell_layer_call_fn_823665�$&%]�Z
S�P
 �
inputs���������?
(�%
#� 
states/0����������
p
� "F�C
�
0����������
#� 
�
1/0�����������
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823121�$&%O�L
E�B
4�1
/�,
inputs/0������������������?

 
p 

 
� "3�0
)�&
0�������������������
� �
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823277�$&%O�L
E�B
4�1
/�,
inputs/0������������������?

 
p

 
� "3�0
)�&
0�������������������
� �
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823401�$&%H�E
>�;
-�*
inputs������������������?

 
p 

 
� "3�0
)�&
0�������������������
� �
F__inference_simple_rnn_layer_call_and_return_conditional_losses_823557�$&%H�E
>�;
-�*
inputs������������������?

 
p

 
� "3�0
)�&
0�������������������
� �
+__inference_simple_rnn_layer_call_fn_822964~$&%O�L
E�B
4�1
/�,
inputs/0������������������?

 
p 

 
� "&�#��������������������
+__inference_simple_rnn_layer_call_fn_822975~$&%O�L
E�B
4�1
/�,
inputs/0������������������?

 
p

 
� "&�#��������������������
+__inference_simple_rnn_layer_call_fn_822986w$&%H�E
>�;
-�*
inputs������������������?

 
p 

 
� "&�#��������������������
+__inference_simple_rnn_layer_call_fn_822997w$&%H�E
>�;
-�*
inputs������������������?

 
p

 
� "&�#��������������������
L__inference_time_distributed_layer_call_and_return_conditional_losses_822907zD�A
:�7
-�*
inputs������������������
p 

 
� "2�/
(�%
0������������������?
� �
L__inference_time_distributed_layer_call_and_return_conditional_losses_822953zD�A
:�7
-�*
inputs������������������
p

 
� "2�/
(�%
0������������������?
� �
1__inference_time_distributed_layer_call_fn_822856mD�A
:�7
-�*
inputs������������������
p 

 
� "%�"������������������?�
1__inference_time_distributed_layer_call_fn_822861mD�A
:�7
-�*
inputs������������������
p

 
� "%�"������������������?