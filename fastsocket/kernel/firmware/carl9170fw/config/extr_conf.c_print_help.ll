; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_conf.c_print_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/config/extr_conf.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }
%struct.gstr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @print_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_help(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.gstr, align 4
  store %struct.menu* %0, %struct.menu** %2, align 8
  %4 = call i32 (...) @str_new()
  %5 = getelementptr inbounds %struct.gstr, %struct.gstr* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load %struct.menu*, %struct.menu** %2, align 8
  %7 = call i32 @menu_get_ext_help(%struct.menu* %6, %struct.gstr* %3)
  %8 = call i8* @str_get(%struct.gstr* %3)
  %9 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i32 @str_free(%struct.gstr* %3)
  ret void
}

declare dso_local i32 @str_new(...) #1

declare dso_local i32 @menu_get_ext_help(%struct.menu*, %struct.gstr*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @str_get(%struct.gstr*) #1

declare dso_local i32 @str_free(%struct.gstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
