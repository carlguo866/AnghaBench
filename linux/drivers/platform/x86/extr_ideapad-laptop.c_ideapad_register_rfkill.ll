; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_register_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_register_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.ideapad_private = type { i32*, %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.ideapad_private* }
%struct.TYPE_5__ = type { i32 }

@no_bt_rfkill = common dso_local global i64 0, align 8
@ideapad_rfk_data = common dso_local global %struct.TYPE_8__* null, align 8
@RFKILL_TYPE_BLUETOOTH = common dso_local global i64 0, align 8
@ideapad_rfk_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ideapad_private*, i32)* @ideapad_register_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ideapad_register_rfkill(%struct.ideapad_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ideapad_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ideapad_private* %0, %struct.ideapad_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @no_bt_rfkill, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ideapad_rfk_data, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RFKILL_TYPE_BLUETOOTH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %21 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ideapad_rfk_data, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @write_ec_cmd(i32 %24, i64 %30, i32 1)
  store i32 0, i32* %3, align 4
  br label %150

32:                                               ; preds = %10, %2
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %35 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 8
  %41 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %42 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %43 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store %struct.ideapad_private* %41, %struct.ideapad_private** %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ideapad_rfk_data, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %56 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ideapad_rfk_data, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %66 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = call i32 @rfkill_alloc(i32 %54, i32* %58, i64 %64, i32* @ideapad_rfk_ops, %struct.TYPE_7__* %70)
  %72 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %73 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %79 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %32
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %150

89:                                               ; preds = %32
  %90 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %91 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ideapad_rfk_data, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 1
  %102 = call i64 @read_ec_data(i32 %94, i64 %101, i64* %7)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %89
  %105 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %106 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @rfkill_init_sw_state(i32 %111, i64 0)
  br label %128

113:                                              ; preds = %89
  %114 = load i64, i64* %7, align 8
  %115 = icmp ne i64 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %7, align 8
  %119 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %120 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @rfkill_init_sw_state(i32 %125, i64 %126)
  br label %128

128:                                              ; preds = %113, %104
  %129 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %130 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @rfkill_register(i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %128
  %140 = load %struct.ideapad_private*, %struct.ideapad_private** %4, align 8
  %141 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @rfkill_destroy(i32 %146)
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %3, align 4
  br label %150

149:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %139, %86, %19
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @write_ec_cmd(i32, i64, i32) #1

declare dso_local i32 @rfkill_alloc(i32, i32*, i64, i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @read_ec_data(i32, i64, i64*) #1

declare dso_local i32 @rfkill_init_sw_state(i32, i64) #1

declare dso_local i32 @rfkill_register(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
