; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_filelock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_filelock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_reply_info_parsed = type { i8* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_mds_reply_info_parsed*, i32)* @parse_reply_info_filelock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reply_info_filelock(i8** %0, i8* %1, %struct.ceph_mds_reply_info_parsed* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ceph_mds_reply_info_parsed* %2, %struct.ceph_mds_reply_info_parsed** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr i8, i8* %11, i64 1
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ugt i8* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %23

16:                                               ; preds = %4
  %17 = load i8**, i8*** %6, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8**, i8*** %6, align 8
  store i8* %21, i8** %22, align 8
  store i32 0, i32* %5, align 4
  br label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
