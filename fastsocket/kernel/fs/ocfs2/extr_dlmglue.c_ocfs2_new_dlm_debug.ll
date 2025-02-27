; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_new_dlm_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_new_dlm_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dlm_debug = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ocfs2_dlm_debug* @ocfs2_new_dlm_debug() #0 {
  %1 = alloca %struct.ocfs2_dlm_debug*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.ocfs2_dlm_debug* @kmalloc(i32 16, i32 %2)
  store %struct.ocfs2_dlm_debug* %3, %struct.ocfs2_dlm_debug** %1, align 8
  %4 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %1, align 8
  %5 = icmp ne %struct.ocfs2_dlm_debug* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  %9 = call i32 @mlog_errno(i32 %8)
  br label %19

10:                                               ; preds = %0
  %11 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %1, align 8
  %12 = getelementptr inbounds %struct.ocfs2_dlm_debug, %struct.ocfs2_dlm_debug* %11, i32 0, i32 2
  %13 = call i32 @kref_init(i32* %12)
  %14 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %1, align 8
  %15 = getelementptr inbounds %struct.ocfs2_dlm_debug, %struct.ocfs2_dlm_debug* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %1, align 8
  %18 = getelementptr inbounds %struct.ocfs2_dlm_debug, %struct.ocfs2_dlm_debug* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %10, %6
  %20 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %1, align 8
  ret %struct.ocfs2_dlm_debug* %20
}

declare dso_local %struct.ocfs2_dlm_debug* @kmalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
