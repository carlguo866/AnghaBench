; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_emptyring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_emptyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmacdma = type { i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbmacdma*)* @sbdma_emptyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbdma_emptyring(%struct.sbmacdma* %0) #0 {
  %2 = alloca %struct.sbmacdma*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sbmacdma* %0, %struct.sbmacdma** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %8 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %13 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %12, i32 0, i32 1
  %14 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %14, i64 %16
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @dev_kfree_skb(%struct.sk_buff* %22)
  %24 = load %struct.sbmacdma*, %struct.sbmacdma** %2, align 8
  %25 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %24, i32 0, i32 1
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %26, i64 %28
  store %struct.sk_buff* null, %struct.sk_buff** %29, align 8
  br label %30

30:                                               ; preds = %21, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
