; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_1_1_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_asm.c_ps_1_1_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_test = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"ps.1.1\0D\0Atex t0\0D\0Aadd r0.rgb, r0, r1\0D\0A+mov r0.a, t0\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ps.1.1\0Amov_d4 r0, r1\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ps_1_1\0Adef c2, 0, 0., 0, 0.\0A\00", align 1
@__const.ps_1_1_test.tests = private unnamed_addr constant [3 x %struct.shader_test] [%struct.shader_test { i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0), %struct.TYPE_2__ { i32 -65279, i32 66, i32 -1341194240, i32 2, i32 -2147024896, i32 -2132541440, i32 -2132541439, i32 1073741825, i32 -2146959360, i32 -1327235072, i32 65535 } }, %struct.shader_test { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_2__ { i32 -65279, i32 1, i32 -1911619584, i32 -2132541439, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.shader_test { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), %struct.TYPE_2__ { i32 -65279, i32 81, i32 -1609629694, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 0, i32 0 } }], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"ps_1_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps_1_1_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_1_1_test() #0 {
  %1 = alloca [3 x %struct.shader_test], align 16
  %2 = bitcast [3 x %struct.shader_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([3 x %struct.shader_test]* @__const.ps_1_1_test.tests to i8*), i64 168, i1 false)
  %3 = getelementptr inbounds [3 x %struct.shader_test], [3 x %struct.shader_test]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [3 x %struct.shader_test], [3 x %struct.shader_test]* %1, i64 0, i64 0
  %5 = call i32 @ARRAY_SIZE(%struct.shader_test* %4)
  %6 = call i32 @exec_tests(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.shader_test* %3, i32 %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @exec_tests(i8*, %struct.shader_test*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.shader_test*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
