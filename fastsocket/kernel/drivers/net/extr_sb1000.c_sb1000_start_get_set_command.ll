; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_start_get_set_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1000.c_sb1000_start_get_set_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_start_get_set_command.Command0 = internal constant [6 x i8] c"\80\1B\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @sb1000_start_get_set_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_start_get_set_command(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [7 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %9 = call i32 @card_send_command(i32* %6, i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_start_get_set_command.Command0, i64 0, i64 0), i8* %8)
  ret i32 %9
}

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
