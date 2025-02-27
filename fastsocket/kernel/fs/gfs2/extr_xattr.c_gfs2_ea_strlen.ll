; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_ea_strlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_gfs2_ea_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_ea_header = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_ea_header*)* @gfs2_ea_strlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_ea_strlen(%struct.gfs2_ea_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_ea_header*, align 8
  store %struct.gfs2_ea_header* %0, %struct.gfs2_ea_header** %3, align 8
  %4 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %3, align 8
  %5 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 128, label %7
    i32 129, label %13
    i32 130, label %19
  ]

7:                                                ; preds = %1
  %8 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 5, %10
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 7, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 9, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %19, %13, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
