; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_enummem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_enummem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i64, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CFE_CMD_FW_MEMENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_enummem(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cfe_xiocb, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* @CFE_CMD_FW_MEMENUM, align 4
  %14 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 2
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %12)
  %25 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %48

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %12, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %32, %28
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
