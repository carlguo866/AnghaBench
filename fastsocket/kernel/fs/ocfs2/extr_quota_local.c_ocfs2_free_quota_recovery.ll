; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_free_quota_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_free_quota_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_quota_recovery = type { i32* }

@MAXQUOTAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_free_quota_recovery(%struct.ocfs2_quota_recovery* %0) #0 {
  %2 = alloca %struct.ocfs2_quota_recovery*, align 8
  %3 = alloca i32, align 4
  store %struct.ocfs2_quota_recovery* %0, %struct.ocfs2_quota_recovery** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAXQUOTAS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_quota_recovery, %struct.ocfs2_quota_recovery* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @free_recovery_list(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %2, align 8
  %21 = call i32 @kfree(%struct.ocfs2_quota_recovery* %20)
  ret void
}

declare dso_local i32 @free_recovery_list(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_quota_recovery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
