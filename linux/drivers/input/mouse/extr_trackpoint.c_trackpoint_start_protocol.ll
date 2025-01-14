; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_start_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_start_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@TP_READ_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32*, i32*)* @trackpoint_start_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_start_protocol(%struct.psmouse* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %14 = load i32, i32* @TP_READ_ID, align 4
  %15 = call i32 @MAKE_PS2_CMD(i32 0, i32 2, i32 %14)
  %16 = call i32 @ps2_command(i32* %12, i32* %13, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %39 [
    i32 129, label %24
    i32 131, label %24
    i32 130, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %21, %21, %21, %21
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %31
  store i32 0, i32* %4, align 4
  br label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %38, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ps2_command(i32*, i32*, i32) #2

declare dso_local i32 @MAKE_PS2_CMD(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
