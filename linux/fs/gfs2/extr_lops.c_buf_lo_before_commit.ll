; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_buf_lo_before_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_buf_lo_before_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_trans = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*, %struct.gfs2_trans*)* @buf_lo_before_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_lo_before_commit(%struct.gfs2_sbd* %0, %struct.gfs2_trans* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.gfs2_trans* %1, %struct.gfs2_trans** %4, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = call i32 @buf_limit(%struct.gfs2_sbd* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.gfs2_trans*, %struct.gfs2_trans** %4, align 8
  %10 = icmp eq %struct.gfs2_trans* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.gfs2_trans*, %struct.gfs2_trans** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gfs2_trans*, %struct.gfs2_trans** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.gfs2_trans*, %struct.gfs2_trans** %4, align 8
  %24 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %23, i32 0, i32 2
  %25 = call i32 @gfs2_before_commit(%struct.gfs2_sbd* %20, i32 %21, i32 %22, i32* %24, i32 0)
  br label %26

26:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @buf_limit(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_before_commit(%struct.gfs2_sbd*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
