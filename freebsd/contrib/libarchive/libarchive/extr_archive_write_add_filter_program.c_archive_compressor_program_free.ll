; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c_archive_compressor_program_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c_archive_compressor_program_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32* }
%struct.private_data = type { i32, i32, %struct.private_data* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_compressor_program_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_compressor_program_free(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.private_data*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %4 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %5 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.private_data*
  store %struct.private_data* %7, %struct.private_data** %3, align 8
  %8 = load %struct.private_data*, %struct.private_data** %3, align 8
  %9 = icmp ne %struct.private_data* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.private_data*, %struct.private_data** %3, align 8
  %12 = getelementptr inbounds %struct.private_data, %struct.private_data* %11, i32 0, i32 2
  %13 = load %struct.private_data*, %struct.private_data** %12, align 8
  %14 = call i32 @free(%struct.private_data* %13)
  %15 = load %struct.private_data*, %struct.private_data** %3, align 8
  %16 = getelementptr inbounds %struct.private_data, %struct.private_data* %15, i32 0, i32 1
  %17 = call i32 @archive_string_free(i32* %16)
  %18 = load %struct.private_data*, %struct.private_data** %3, align 8
  %19 = getelementptr inbounds %struct.private_data, %struct.private_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @__archive_write_program_free(i32 %20)
  %22 = load %struct.private_data*, %struct.private_data** %3, align 8
  %23 = call i32 @free(%struct.private_data* %22)
  %24 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %25 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %10, %1
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %27
}

declare dso_local i32 @free(%struct.private_data*) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @__archive_write_program_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
