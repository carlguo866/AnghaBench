; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svcsubs.c_nlmsvc_match_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svcsubs.c_nlmsvc_match_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_file = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { %struct.super_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.nlm_file*)* @nlmsvc_match_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsvc_match_sb(i8* %0, %struct.nlm_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nlm_file*, align 8
  %5 = alloca %struct.super_block*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nlm_file* %1, %struct.nlm_file** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.super_block*
  store %struct.super_block* %7, %struct.super_block** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %5, align 8
  %9 = load %struct.nlm_file*, %struct.nlm_file** %4, align 8
  %10 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @locks_inode(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  %15 = icmp eq %struct.super_block* %8, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local %struct.TYPE_2__* @locks_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
