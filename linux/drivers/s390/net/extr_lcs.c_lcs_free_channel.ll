; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_free_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ichfree\00", align 1
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_channel*)* @lcs_free_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_free_channel(%struct.lcs_channel* %0) #0 {
  %2 = alloca %struct.lcs_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %2, align 8
  %4 = load i32, i32* @setup, align 4
  %5 = call i32 @LCS_DBF_TEXT(i32 2, i32 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %12 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.lcs_channel*, %struct.lcs_channel** %2, align 8
  %21 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %10
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
