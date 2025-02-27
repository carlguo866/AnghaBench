; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_dot11d.c_IsLegalChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_dot11d.c_IsLegalChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.TYPE_3__ = type { i64* }

@MAX_CHANNEL_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"IsLegalChannel(): Invalid Channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsLegalChannel(%struct.ieee80211_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %8 = call %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device* %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load i64, i64* @MAX_CHANNEL_NUMBER, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_3__* @GET_DOT11D_INFO(%struct.ieee80211_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
