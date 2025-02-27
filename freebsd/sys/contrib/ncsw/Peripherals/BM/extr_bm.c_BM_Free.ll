; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.c_BM_Free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm.c_BM_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__*, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@NO_IRQ = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BM_Free(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @E_INVALID_HANDLE, align 4
  %11 = call i32 @ERROR_CODE(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NCSW_MASTER_ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @XX_IpcUnregisterMsgHandler(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NO_IRQ, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @XX_DisableIntr(i64 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @XX_FreeIntr(i64 %35)
  br label %37

37:                                               ; preds = %28, %18
  br label %38

38:                                               ; preds = %37, %12
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @FreeInitResources(%struct.TYPE_4__* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @XX_Free(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = call i32 @XX_Free(%struct.TYPE_4__* %51)
  %53 = load i32, i32* @E_OK, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @XX_IpcUnregisterMsgHandler(i32) #1

declare dso_local i32 @XX_DisableIntr(i64) #1

declare dso_local i32 @XX_FreeIntr(i64) #1

declare dso_local i32 @FreeInitResources(%struct.TYPE_4__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
