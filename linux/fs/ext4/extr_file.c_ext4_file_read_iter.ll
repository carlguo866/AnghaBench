; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_file_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_file_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.iov_iter = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @ext4_file_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_file_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %6 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %7 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_3__* @file_inode(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @EXT4_SB(i32 %11)
  %13 = call i32 @ext4_forced_shutdown(i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %21 = call i32 @iov_iter_count(%struct.iov_iter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %28

24:                                               ; preds = %19
  %25 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %27 = call i32 @generic_file_read_iter(%struct.kiocb* %25, %struct.iov_iter* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %23, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local %struct.TYPE_3__* @file_inode(i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
