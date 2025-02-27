; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_restore_sigmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_newnfs_restore_sigmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @newnfs_restore_sigmask(%struct.thread* %0, i32* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = icmp eq %struct.thread* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %8, %struct.thread** %3, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = load i32, i32* @SIG_SETMASK, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @kern_sigprocmask(%struct.thread* %10, i32 %11, i32* %12, i32* null, i32 0)
  ret void
}

declare dso_local i32 @kern_sigprocmask(%struct.thread*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
