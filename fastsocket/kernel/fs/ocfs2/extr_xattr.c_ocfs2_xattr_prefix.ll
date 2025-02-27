; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_prefix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i8* }

@OCFS2_XATTR_MAX = common dso_local global i32 0, align 4
@ocfs2_xattr_handler_map = common dso_local global %struct.xattr_handler** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @ocfs2_xattr_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocfs2_xattr_prefix(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xattr_handler*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.xattr_handler* null, %struct.xattr_handler** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @OCFS2_XATTR_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load %struct.xattr_handler**, %struct.xattr_handler*** @ocfs2_xattr_handler_map, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.xattr_handler*, %struct.xattr_handler** %11, i64 %13
  %15 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  store %struct.xattr_handler* %15, %struct.xattr_handler** %3, align 8
  br label %16

16:                                               ; preds = %10, %6, %1
  %17 = load %struct.xattr_handler*, %struct.xattr_handler** %3, align 8
  %18 = icmp ne %struct.xattr_handler* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.xattr_handler*, %struct.xattr_handler** %3, align 8
  %21 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ null, %23 ]
  ret i8* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
