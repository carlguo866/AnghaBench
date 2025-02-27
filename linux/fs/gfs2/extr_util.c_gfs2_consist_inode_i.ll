; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_consist_inode_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_util.c_gfs2_consist_inode_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i64, i64, i32 }
%struct.gfs2_sbd = type { i32 }

@.str = private unnamed_addr constant [95 x i8] c"fatal: filesystem consistency error\0A  inode = %llu %llu\0A  function = %s, file = %s, line = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_consist_inode_i(%struct.gfs2_inode* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gfs2_sbd*, align 8
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 2
  %15 = call %struct.gfs2_sbd* @GFS2_SB(i32* %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %11, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %21 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @gfs2_lm_withdraw(%struct.gfs2_sbd* %16, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %22, i8* %23, i8* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  ret i32 %27
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_lm_withdraw(%struct.gfs2_sbd*, i8*, i64, i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
