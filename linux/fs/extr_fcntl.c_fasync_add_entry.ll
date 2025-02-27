; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fcntl.c_fasync_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fasync_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, %struct.fasync_struct**)* @fasync_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasync_add_entry(i32 %0, %struct.file* %1, %struct.fasync_struct** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.fasync_struct**, align 8
  %8 = alloca %struct.fasync_struct*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.fasync_struct** %2, %struct.fasync_struct*** %7, align 8
  %9 = call %struct.fasync_struct* (...) @fasync_alloc()
  store %struct.fasync_struct* %9, %struct.fasync_struct** %8, align 8
  %10 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %11 = icmp ne %struct.fasync_struct* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = load %struct.fasync_struct**, %struct.fasync_struct*** %7, align 8
  %19 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %20 = call i64 @fasync_insert_entry(i32 %16, %struct.file* %17, %struct.fasync_struct** %18, %struct.fasync_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.fasync_struct*, %struct.fasync_struct** %8, align 8
  %24 = call i32 @fasync_free(%struct.fasync_struct* %23)
  store i32 0, i32* %4, align 4
  br label %26

25:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.fasync_struct* @fasync_alloc(...) #1

declare dso_local i64 @fasync_insert_entry(i32, %struct.file*, %struct.fasync_struct**, %struct.fasync_struct*) #1

declare dso_local i32 @fasync_free(%struct.fasync_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
