; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_openr_next_archived_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_openr_next_archived_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@bfd_archive = common dso_local global i64 0, align 8
@write_direction = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@openr_next_archived_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @bfd_openr_next_archived_file(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = call i64 @bfd_get_format(%struct.TYPE_9__* %6)
  %8 = load i64, i64* @bfd_archive, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @write_direction, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @bfd_error_invalid_operation, align 4
  %18 = call i32 @bfd_set_error(i32 %17)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %25

19:                                               ; preds = %10
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = load i32, i32* @openr_next_archived_file, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call %struct.TYPE_9__* @BFD_SEND(%struct.TYPE_9__* %20, i32 %21, %struct.TYPE_9__* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %3, align 8
  br label %25

25:                                               ; preds = %19, %16
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %26
}

declare dso_local i64 @bfd_get_format(%struct.TYPE_9__*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_9__* @BFD_SEND(%struct.TYPE_9__*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
