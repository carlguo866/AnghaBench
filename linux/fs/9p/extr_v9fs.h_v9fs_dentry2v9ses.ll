; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.h_v9fs_dentry2v9ses.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.h_v9fs_dentry2v9ses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v9fs_session_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v9fs_session_info* (%struct.dentry*)* @v9fs_dentry2v9ses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %4 = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  ret %struct.v9fs_session_info* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
