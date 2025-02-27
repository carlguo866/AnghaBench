; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___submit_merged_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___submit_merged_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_bio_info = type { i32*, %struct.TYPE_2__*, %struct.f2fs_io_info }
%struct.TYPE_2__ = type { i32 }
%struct.f2fs_io_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_bio_info*)* @__submit_merged_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__submit_merged_bio(%struct.f2fs_bio_info* %0) #0 {
  %2 = alloca %struct.f2fs_bio_info*, align 8
  %3 = alloca %struct.f2fs_io_info*, align 8
  store %struct.f2fs_bio_info* %0, %struct.f2fs_bio_info** %2, align 8
  %4 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %5 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %4, i32 0, i32 2
  store %struct.f2fs_io_info* %5, %struct.f2fs_io_info** %3, align 8
  %6 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %7 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %13 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %16 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %19 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bio_set_op_attrs(i32* %14, i32 %17, i32 %20)
  %22 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %23 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_read_io(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %11
  %28 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %29 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %34 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %37 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @trace_f2fs_prepare_read_bio(i32 %32, i32 %35, i32* %38)
  br label %53

40:                                               ; preds = %11
  %41 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %42 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %47 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %50 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @trace_f2fs_prepare_write_bio(i32 %45, i32 %48, i32* %51)
  br label %53

53:                                               ; preds = %40, %27
  %54 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %55 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %58 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %61 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__submit_bio(%struct.TYPE_2__* %56, i32* %59, i32 %62)
  %64 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %2, align 8
  %65 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %53, %10
  ret void
}

declare dso_local i32 @bio_set_op_attrs(i32*, i32, i32) #1

declare dso_local i64 @is_read_io(i32) #1

declare dso_local i32 @trace_f2fs_prepare_read_bio(i32, i32, i32*) #1

declare dso_local i32 @trace_f2fs_prepare_write_bio(i32, i32, i32*) #1

declare dso_local i32 @__submit_bio(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
