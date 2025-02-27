; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_do_i2c_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_do_i2c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@i2c_devs = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: i2c scan: found device @ 0x%x  [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.i2c_client*)* @do_i2c_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_i2c_scan(i8* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i8**, i8*** @i2c_devs, align 8
  %11 = call i32 @ARRAY_SIZE(i8** %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = call i32 @i2c_master_recv(%struct.i2c_client* %17, i8* %5, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %42

22:                                               ; preds = %13
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 1
  %26 = load i8**, i8*** @i2c_devs, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i8**, i8*** @i2c_devs, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i8* [ %37, %32 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %38 ]
  %41 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25, i8* %40)
  br label %42

42:                                               ; preds = %39, %21
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @printk(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
