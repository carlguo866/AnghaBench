; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_get_install_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_get_install_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@szInstallLocation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @get_install_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_install_location(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i64 @MSIREG_OpenInstallProps(i32 %14, i32 %17, i32* null, i32* %4, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store i32* null, i32** %2, align 8
  br label %39

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @szInstallLocation, align 4
  %25 = call i32* @msi_reg_get_val_str(i32 %23, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @msi_free(i32* %33)
  store i32* null, i32** %5, align 8
  br label %35

35:                                               ; preds = %32, %27, %22
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @RegCloseKey(i32 %36)
  %38 = load i32*, i32** %5, align 8
  store i32* %38, i32** %2, align 8
  br label %39

39:                                               ; preds = %35, %21, %10
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i64 @MSIREG_OpenInstallProps(i32, i32, i32*, i32*, i32) #1

declare dso_local i32* @msi_reg_get_val_str(i32, i32) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
