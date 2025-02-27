; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file_info = type { i32, i32 }

@memfd_path = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fuse_file_info*)* @memfd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memfd_open(i8* %0, %struct.fuse_file_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fuse_file_info*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.fuse_file_info* %1, %struct.fuse_file_info** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @memfd_path, align 4
  %8 = call i64 @strcmp(i8* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.fuse_file_info*, %struct.fuse_file_info** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %13
  %24 = load %struct.fuse_file_info*, %struct.fuse_file_info** %5, align 8
  %25 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
