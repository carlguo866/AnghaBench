; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_mark_list_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_mark_list_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@metafiles = common dso_local global %struct.TYPE_2__** null, align 8
@tot_metafiles_memory = common dso_local global i64 0, align 8
@tot_metafiles_marked_memory = common dso_local global i64 0, align 8
@metafiles_marked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mark_list_metafile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @get_list_metafile(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @metafiles, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i64 @get_metafile_offset(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @get_metafile_offset(i32 %24)
  %26 = sub nsw i64 %23, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @tot_metafiles_memory, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* @tot_metafiles_memory, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @tot_metafiles_marked_memory, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* @tot_metafiles_marked_memory, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @del_use(i32 %33)
  %35 = load i32, i32* @metafiles_marked, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @metafiles_marked, align 4
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @get_list_metafile(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_metafile_offset(i32) #1

declare dso_local i32 @del_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
