; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_orlov_skip.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_orlov_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @gfs2_orlov_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_orlov_skip(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %5 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %5, i32 0, i32 0
  %7 = call %struct.gfs2_sbd* @GFS2_SB(i32* %6)
  store %struct.gfs2_sbd* %7, %struct.gfs2_sbd** %3, align 8
  %8 = call i32 @get_random_bytes(i32* %4, i32 4)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = srem i32 %9, %12
  ret i32 %13
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
