; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_AddTag.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_profile.c_AddTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@g_i_hwm = common dso_local global i32 0, align 4
@NUM_TAGS = common dso_local global i32 0, align 4
@g_tag = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @AddTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @AddTag(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @g_i_hwm, align 4
  %5 = add nsw i32 %4, 1
  %6 = load i32, i32* @NUM_TAGS, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_tag, align 8
  %11 = load i32, i32* @g_i_hwm, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcpy(i32 %15, i8* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_tag, align 8
  %19 = load i32, i32* @g_i_hwm, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_tag, align 8
  %24 = load i32, i32* @g_i_hwm, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @g_i_hwm, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %2, align 8
  br label %28

28:                                               ; preds = %9, %8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %29
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
