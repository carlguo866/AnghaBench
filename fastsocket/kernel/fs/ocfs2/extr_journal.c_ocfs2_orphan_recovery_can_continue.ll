; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_recovery_can_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_orphan_recovery_can_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32)* @ocfs2_orphan_recovery_can_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_orphan_recovery_can_continue(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
