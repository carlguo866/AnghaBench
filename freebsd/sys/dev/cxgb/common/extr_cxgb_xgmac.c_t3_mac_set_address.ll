; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_set_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_set_address(%struct.cmac* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.cmac* %0, %struct.cmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.cmac*, %struct.cmac** %5, align 8
  %9 = getelementptr inbounds %struct.cmac, %struct.cmac* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.cmac*, %struct.cmac** %5, align 8
  %14 = getelementptr inbounds %struct.cmac, %struct.cmac* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.cmac*, %struct.cmac** %5, align 8
  %18 = getelementptr inbounds %struct.cmac, %struct.cmac* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul i32 %16, %22
  %24 = add i32 %15, %23
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %12, %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.cmac*, %struct.cmac** %5, align 8
  %28 = getelementptr inbounds %struct.cmac, %struct.cmac* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %60

34:                                               ; preds = %25
  %35 = load %struct.cmac*, %struct.cmac** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @set_addr_filter(%struct.cmac* %35, i32 %36, i32* %37)
  %39 = load %struct.cmac*, %struct.cmac** %5, align 8
  %40 = getelementptr inbounds %struct.cmac, %struct.cmac* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.cmac*, %struct.cmac** %5, align 8
  %46 = getelementptr inbounds %struct.cmac, %struct.cmac* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %44, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.cmac*, %struct.cmac** %5, align 8
  %54 = getelementptr inbounds %struct.cmac, %struct.cmac* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @t3_vsc7323_set_addr(%struct.TYPE_4__* %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %43, %34
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @set_addr_filter(%struct.cmac*, i32, i32*) #1

declare dso_local i32 @t3_vsc7323_set_addr(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
