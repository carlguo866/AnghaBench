; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.iic_cdevpriv = type { i32, i32 }

@M_IIC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"iic\00", align 1
@iicdtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @iicopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.iic_cdevpriv*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load i32, i32* @M_IIC, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.iic_cdevpriv* @malloc(i32 8, i32 %11, i32 %14)
  store %struct.iic_cdevpriv* %15, %struct.iic_cdevpriv** %9, align 8
  %16 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %17 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %16, i32 0, i32 1
  %18 = call i32 @sx_init(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cdev*, %struct.cdev** %5, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %23 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %25 = load i32, i32* @iicdtor, align 4
  %26 = call i32 @devfs_set_cdevpriv(%struct.iic_cdevpriv* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %31 = load i32, i32* @M_IIC, align 4
  %32 = call i32 @free(%struct.iic_cdevpriv* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i32, i32* %10, align 4
  ret i32 %34
}

declare dso_local %struct.iic_cdevpriv* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.iic_cdevpriv*, i32) #1

declare dso_local i32 @free(%struct.iic_cdevpriv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
