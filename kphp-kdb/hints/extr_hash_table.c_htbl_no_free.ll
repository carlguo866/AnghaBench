; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hash_table.c_htbl_no_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hash_table.c_htbl_no_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }

@htbl_free_entries = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htbl_no_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  store %struct.TYPE_7__** %16, %struct.TYPE_7__*** %5, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %53, %10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %35, %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %6, align 8
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @htbl_free_entries, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** @htbl_free_entries, align 8
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %51, align 8
  br label %52

52:                                               ; preds = %39, %21
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %17

56:                                               ; preds = %17
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @dl_free(%struct.TYPE_7__** %59, i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store %struct.TYPE_7__** null, %struct.TYPE_7__*** %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %56, %9
  ret void
}

declare dso_local i32 @dl_free(%struct.TYPE_7__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
