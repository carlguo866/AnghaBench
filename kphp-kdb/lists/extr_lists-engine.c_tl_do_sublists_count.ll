; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_sublists_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_sublists_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_count = type { i32 }

@R = common dso_local global i32* null, align 8
@TL_TUPLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_sublists_count(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_list_count*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %7 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %8 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.tl_list_count*
  store %struct.tl_list_count* %11, %struct.tl_list_count** %4, align 8
  %12 = load %struct.tl_list_count*, %struct.tl_list_count** %4, align 8
  %13 = getelementptr inbounds %struct.tl_list_count, %struct.tl_list_count* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @R, align 8
  %16 = call i32 @fetch_list_counters(i32 %14, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -2
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %57

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 9
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 9, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* @TL_TUPLE, align 4
  %31 = call i32 @tl_store_int(i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %43, %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32*, i32** @R, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tl_store_int(i32 %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %53, %46
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 9
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = call i32 @tl_store_int(i32 0)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %48

56:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %23, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @fetch_list_counters(i32, i32*) #1

declare dso_local i32 @tl_store_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
