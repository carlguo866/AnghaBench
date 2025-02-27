; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1200fb.c_au1200fb_fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.au1200fb_device* }
%struct.au1200fb_device = type { i32 }

@noblanking = common dso_local global i64 0, align 8
@panel = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @au1200fb_fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1200fb_fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.au1200fb_device*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.au1200fb_device*, %struct.au1200fb_device** %8, align 8
  store %struct.au1200fb_device* %9, %struct.au1200fb_device** %6, align 8
  %10 = load i64, i64* @noblanking, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %26 [
    i32 129, label %15
    i32 131, label %15
    i32 128, label %21
    i32 132, label %21
    i32 130, label %21
  ]

15:                                               ; preds = %13, %13
  %16 = load i32*, i32** @panel, align 8
  %17 = load %struct.au1200fb_device*, %struct.au1200fb_device** %6, align 8
  %18 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @au1200_setpanel(i32* %16, i32 %19)
  br label %27

21:                                               ; preds = %13, %13, %13
  %22 = load %struct.au1200fb_device*, %struct.au1200fb_device** %6, align 8
  %23 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @au1200_setpanel(i32* null, i32 %24)
  br label %27

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %21, %15
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @au1200_setpanel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
