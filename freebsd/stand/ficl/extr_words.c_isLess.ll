; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_isLess.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_isLess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @isLess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isLess(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @stackPop(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = bitcast %struct.TYPE_7__* %4 to i8*
  %13 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @stackPop(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = bitcast %struct.TYPE_7__* %3 to i8*
  %20 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @FICL_BOOL(i32 %26)
  %28 = call i32 @PUSHINT(i32 %27)
  ret void
}

declare dso_local i64 @stackPop(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PUSHINT(i32) #1

declare dso_local i32 @FICL_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
