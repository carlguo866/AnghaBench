; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pcl816_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* @TRIG_NOW, align 4
  %13 = call i32 @comedi_check_trigger_src(i32* %11, i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* @TRIG_FOLLOW, align 4
  %19 = call i32 @comedi_check_trigger_src(i32* %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* @TRIG_EXT, align 4
  %25 = load i32, i32* @TRIG_TIMER, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @comedi_check_trigger_src(i32* %23, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 3
  %32 = load i32, i32* @TRIG_COUNT, align 4
  %33 = call i32 @comedi_check_trigger_src(i32* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 4
  %38 = load i32, i32* @TRIG_COUNT, align 4
  %39 = load i32, i32* @TRIG_NONE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @comedi_check_trigger_src(i32* %37, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %167

47:                                               ; preds = %3
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @comedi_check_trigger_is_unique(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @comedi_check_trigger_is_unique(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  store i32 2, i32* %4, align 4
  br label %167

63:                                               ; preds = %47
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 5
  %66 = call i32 @comedi_check_trigger_arg_is(i32* %65, i32 0)
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 6
  %71 = call i32 @comedi_check_trigger_arg_is(i32* %70, i32 0)
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TRIG_TIMER, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %63
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 7
  %82 = call i32 @comedi_check_trigger_arg_min(i32* %81, i32 10000)
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %91

85:                                               ; preds = %63
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 7
  %88 = call i32 @comedi_check_trigger_arg_is(i32* %87, i32 0)
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 8
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @comedi_check_trigger_arg_is(i32* %93, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TRIG_COUNT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %91
  %106 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %106, i32 0, i32 10
  %108 = call i32 @comedi_check_trigger_arg_min(i32* %107, i32 1)
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %117

111:                                              ; preds = %91
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 10
  %114 = call i32 @comedi_check_trigger_arg_is(i32* %113, i32 0)
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %111, %105
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 3, i32* %4, align 4
  br label %167

121:                                              ; preds = %117
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TRIG_TIMER, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  %131 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @comedi_8254_cascade_ns_to_timer(i32 %133, i32* %9, i32 %136)
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 7
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @comedi_check_trigger_arg_is(i32* %139, i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %127, %121
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 4, i32* %4, align 4
  br label %167

148:                                              ; preds = %144
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 11
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %155 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 11
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @check_channel_list(%struct.comedi_device* %154, %struct.comedi_subdevice* %155, i64 %158, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %153
  store i32 5, i32* %4, align 4
  br label %167

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %148
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %164, %147, %120, %62, %46
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @comedi_check_trigger_src(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_is_unique(i32) #1

declare dso_local i32 @comedi_check_trigger_arg_is(i32*, i32) #1

declare dso_local i32 @comedi_check_trigger_arg_min(i32*, i32) #1

declare dso_local i32 @comedi_8254_cascade_ns_to_timer(i32, i32*, i32) #1

declare dso_local i32 @check_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
