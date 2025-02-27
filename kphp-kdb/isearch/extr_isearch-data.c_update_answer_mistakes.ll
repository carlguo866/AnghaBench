; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_update_answer_mistakes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_update_answer_mistakes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mark = common dso_local global i32* null, align 8
@ratings = common dso_local global i64* null, align 8
@lowest_rate = common dso_local global i64 0, align 8
@names_buff = common dso_local global i64 0, align 8
@names = common dso_local global i64* null, align 8
@mistakes_cnt = common dso_local global i32 0, align 4
@mistakes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_answer_mistakes(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @get_id_by_hash(i64 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** @mark, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %68, label %19

19:                                               ; preds = %4
  %20 = load i64*, i64** @ratings, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @lowest_rate, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %19
  %28 = load i64, i64* @names_buff, align 8
  %29 = load i64*, i64** @names, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = call i32 @black_list_check(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @mistakes_cnt, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** @mistakes, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %43, %48
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i1 [ false, %38 ], [ %49, %42 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %38

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @mistakes_cnt, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** @mistakes, align 8
  %63 = load i32, i32* @mistakes_cnt, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @mistakes_cnt, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %56
  br label %68

68:                                               ; preds = %67, %27, %19, %4
  ret void
}

declare dso_local i32 @get_id_by_hash(i64) #1

declare dso_local i32 @black_list_check(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
