; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_sync_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_sync_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.qedf_ctx = type { i32, %struct.TYPE_10__, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@qed_ops = common dso_local global %struct.TYPE_12__* null, align 8
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Freeing IRQ #%d vector_idx=%d.\0A\00", align 1
@QEDF_SIMD_HANDLER_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*)* @qedf_sync_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_sync_free_irqs(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %2, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %66, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64 (i32)*, i64 (i32)** %31, align 8
  %33 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 %32(i32 %35)
  %37 = add i64 %27, %36
  store i64 %37, i64* %4, align 8
  %38 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %38, i32 0, i32 3
  %40 = load i32, i32* @QEDF_LOG_DISC, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @QEDF_INFO(i32* %39, i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  %44 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @synchronize_irq(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @irq_set_affinity_hint(i32 %54, i32* null)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @irq_set_affinity_notifier(i32 %56, i32* null)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @free_irq(i32 %58, i32* %64)
  br label %66

66:                                               ; preds = %19
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %12

69:                                               ; preds = %12
  br label %81

70:                                               ; preds = %1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32 (i32, i32)*, i32 (i32, i32)** %74, align 8
  %76 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @QEDF_SIMD_HANDLER_NUM, align 4
  %80 = call i32 %75(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %70, %69
  %82 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %83 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32 (i32, i32)*, i32 (i32, i32)** %88, align 8
  %90 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %89(i32 %92, i32 0)
  ret void
}

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @irq_set_affinity_notifier(i32, i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
