; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9aclc_dmadata = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @txx9aclc_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9aclc_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.txx9aclc_dmadata*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.txx9aclc_dmadata*
  store %struct.txx9aclc_dmadata* %6, %struct.txx9aclc_dmadata** %3, align 8
  %7 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %3, align 8
  %8 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %7, i32 0, i32 2
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %3, align 8
  %12 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %3, align 8
  %17 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %3, align 8
  %21 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %15
  %28 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %3, align 8
  %29 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %28, i32 0, i32 3
  %30 = call i32 @tasklet_schedule(i32* %29)
  br label %31

31:                                               ; preds = %27, %15
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %3, align 8
  %34 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %33, i32 0, i32 2
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
