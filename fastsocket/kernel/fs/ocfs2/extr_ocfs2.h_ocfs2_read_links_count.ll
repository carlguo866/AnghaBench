; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_ocfs2.h_ocfs2_read_links_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_ocfs2.h_ocfs2_read_links_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dinode = type { i32, i32, i32 }

@OCFS2_INDEXED_DIR_FL = common dso_local global i32 0, align 4
@OCFS2_LINKS_HI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_dinode*)* @ocfs2_read_links_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %0) #0 {
  %2 = alloca %struct.ocfs2_dinode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ocfs2_dinode* %0, %struct.ocfs2_dinode** %2, align 8
  %5 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le16_to_cpu(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OCFS2_INDEXED_DIR_FL, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @OCFS2_LINKS_HI_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
