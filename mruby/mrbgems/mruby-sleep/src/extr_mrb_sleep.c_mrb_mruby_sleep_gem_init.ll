; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-sleep/src/extr_mrb_sleep.c_mrb_mruby_sleep_gem_init.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-sleep/src/extr_mrb_sleep.c_mrb_mruby_sleep_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@mrb_f_sleep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"usleep\00", align 1
@mrb_f_usleep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_mruby_sleep_gem_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @mrb_f_sleep, align 4
  %8 = call i32 @MRB_ARGS_REQ(i32 1)
  %9 = call i32 @mrb_define_method(%struct.TYPE_4__* %3, i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @mrb_f_usleep, align 4
  %15 = call i32 @MRB_ARGS_REQ(i32 1)
  %16 = call i32 @mrb_define_method(%struct.TYPE_4__* %10, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @mrb_define_method(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
