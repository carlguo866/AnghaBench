; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_πfs.c_pifs_release.c'
source_filename = "/home/carl/AnghaBench/pifs/src/extr_\CF\80fs.c_pifs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file_info = type { i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fuse_file_info*)* @pifs_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pifs_release(i8* %0, %struct.fuse_file_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fuse_file_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fuse_file_info* %1, %struct.fuse_file_info** %4, align 8
  %6 = load %struct.fuse_file_info*, %struct.fuse_file_info** %4, align 8
  %7 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @close(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  %14 = sub nsw i32 0, %13
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  ret i32 %18
}

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
