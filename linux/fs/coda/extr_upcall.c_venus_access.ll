; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_venus_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.CodaFid = type { i32 }
%union.inputArgs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.CodaFid }
%union.outputArgs = type { i32 }

@access = common dso_local global i32 0, align 4
@CODA_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_access(%struct.super_block* %0, %struct.CodaFid* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.CodaFid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.inputArgs*, align 8
  %8 = alloca %union.outputArgs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @access, align 4
  %13 = call i32 @SIZE(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @CODA_ACCESS, align 4
  %15 = call i32 @UPARG(i32 %14)
  %16 = load %union.inputArgs*, %union.inputArgs** %7, align 8
  %17 = bitcast %union.inputArgs* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.CodaFid*, %struct.CodaFid** %5, align 8
  %20 = bitcast %struct.CodaFid* %18 to i8*
  %21 = bitcast %struct.CodaFid* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load i32, i32* %6, align 4
  %23 = load %union.inputArgs*, %union.inputArgs** %7, align 8
  %24 = bitcast %union.inputArgs* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = call i32 @coda_vcp(%struct.super_block* %26)
  %28 = load i32, i32* %9, align 4
  %29 = load %union.inputArgs*, %union.inputArgs** %7, align 8
  %30 = call i32 @coda_upcall(i32 %27, i32 %28, i32* %10, %union.inputArgs* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %union.inputArgs*, %union.inputArgs** %7, align 8
  %32 = call i32 @kvfree(%union.inputArgs* %31)
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local i32 @SIZE(i32) #1

declare dso_local i32 @UPARG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @coda_upcall(i32, i32, i32*, %union.inputArgs*) #1

declare dso_local i32 @coda_vcp(%struct.super_block*) #1

declare dso_local i32 @kvfree(%union.inputArgs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
