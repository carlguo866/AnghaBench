; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@REG_CLKF = common dso_local global i32 0, align 4
@REG_CNTL1 = common dso_local global i32 0, align 4
@REG_CNTL2 = common dso_local global i32 0, align 4
@REG_CNTL3 = common dso_local global i32 0, align 4
@REG_STIM = common dso_local global i32 0, align 4
@REG_SOF = common dso_local global i32 0, align 4
@REG_STP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @fas216_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_init_chip(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  %9 = sdiv i32 %8, 5
  %10 = add nsw i32 %9, 1
  %11 = and i32 %10, 7
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load i32, i32* @REG_CLKF, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @fas216_writeb(%struct.TYPE_8__* %12, i32 %13, i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load i32, i32* @REG_CNTL1, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fas216_writeb(%struct.TYPE_8__* %16, i32 %17, i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* @REG_CNTL2, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fas216_writeb(%struct.TYPE_8__* %25, i32 %26, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = load i32, i32* @REG_CNTL3, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fas216_writeb(%struct.TYPE_8__* %34, i32 %35, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = load i32, i32* @REG_STIM, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fas216_writeb(%struct.TYPE_8__* %43, i32 %44, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = load i32, i32* @REG_SOF, align 4
  %52 = call i32 @fas216_writeb(%struct.TYPE_8__* %50, i32 %51, i32 0)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = load i32, i32* @REG_STP, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @fas216_writeb(%struct.TYPE_8__* %53, i32 %54, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = load i32, i32* @REG_CNTL1, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fas216_writeb(%struct.TYPE_8__* %60, i32 %61, i32 %67)
  ret void
}

declare dso_local i32 @fas216_writeb(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
