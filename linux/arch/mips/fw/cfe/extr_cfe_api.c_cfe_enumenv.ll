; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_enumenv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/fw/cfe/extr_cfe_api.c_cfe_enumenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i32, i32, %struct.TYPE_4__, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8* }

@CFE_CMD_ENV_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_enumenv(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cfe_xiocb, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @CFE_CMD_ENV_SET, align 4
  %13 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 5
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 1
  store i32 4, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @XPTR_FROM_NATIVE(i8* %22)
  %24 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @XPTR_FROM_NATIVE(i8* %31)
  %33 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %11)
  %41 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  ret i32 %42
}

declare dso_local i8* @XPTR_FROM_NATIVE(i8*) #1

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
