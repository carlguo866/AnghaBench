; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_clear_bchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_clear_bchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32*, i64, i32* }

@FLG_TX_BUSY = common dso_local global i32 0, align 4
@FLG_TX_NEXT = common dso_local global i32 0, align 4
@FLG_ACTIVE = common dso_local global i32 0, align 4
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@FLG_RX_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mISDN_clear_bchannel(%struct.bchannel* %0) #0 {
  %2 = alloca %struct.bchannel*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %2, align 8
  %3 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %4 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %3, i32 0, i32 13
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %9 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %8, i32 0, i32 13
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dev_kfree_skb(i32* %10)
  %12 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %13 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %12, i32 0, i32 13
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %16 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %15, i32 0, i32 12
  store i64 0, i64* %16, align 8
  %17 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %18 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %17, i32 0, i32 11
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %23 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %22, i32 0, i32 11
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dev_kfree_skb(i32* %24)
  %26 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %27 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %26, i32 0, i32 11
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %30 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %29, i32 0, i32 10
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %35 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %34, i32 0, i32 10
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dev_kfree_skb(i32* %36)
  %38 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %39 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %38, i32 0, i32 10
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @FLG_TX_BUSY, align 4
  %42 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %43 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %42, i32 0, i32 9
  %44 = call i32 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = load i32, i32* @FLG_TX_NEXT, align 4
  %46 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %47 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %46, i32 0, i32 9
  %48 = call i32 @test_and_clear_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @FLG_ACTIVE, align 4
  %50 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %51 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %50, i32 0, i32 9
  %52 = call i32 @test_and_clear_bit(i32 %49, i32* %51)
  %53 = load i32, i32* @FLG_FILLEMPTY, align 4
  %54 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %55 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %54, i32 0, i32 9
  %56 = call i32 @test_and_clear_bit(i32 %53, i32* %55)
  %57 = load i32, i32* @FLG_TX_EMPTY, align 4
  %58 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %59 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %58, i32 0, i32 9
  %60 = call i32 @test_and_clear_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @FLG_RX_OFF, align 4
  %62 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %63 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %62, i32 0, i32 9
  %64 = call i32 @test_and_clear_bit(i32 %61, i32* %63)
  %65 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %66 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %68 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %71 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %73 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %76 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %78 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %81 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %83 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %86 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %88 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %87, i32 0, i32 1
  %89 = call i32 @skb_queue_purge(i32* %88)
  %90 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %91 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
