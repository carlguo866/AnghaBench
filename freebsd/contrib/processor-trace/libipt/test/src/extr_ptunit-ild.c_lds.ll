; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-ild.c_lds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-ild.c_lds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }

@__const.lds.insn = private unnamed_addr constant [2 x i32] [i32 197, i32 0], align 4
@ptem_16bit = common dso_local global i32 0, align 4
@ptem_32bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lds() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca [2 x i32], align 4
  %3 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([2 x i32]* @__const.lds.insn to i8*), i64 8, i1 false)
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %5 = load i32, i32* @ptem_16bit, align 4
  %6 = call i32 @ptu_decode_s(i32* %4, i32 %5)
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %8 = load i32, i32* @ptem_32bit, align 4
  %9 = call i32 @ptu_decode_s(i32* %7, i32 %8)
  %10 = call i32 (...) @ptu_passed()
  %11 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  ret i32 %13
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ptu_decode_s(i32*, i32) #2

declare dso_local i32 @ptu_passed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
