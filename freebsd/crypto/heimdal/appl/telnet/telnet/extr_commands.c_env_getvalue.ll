; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_getvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_getvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_lst = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @env_getvalue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.env_lst*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.env_lst* @env_find(i8* %5)
  store %struct.env_lst* %6, %struct.env_lst** %4, align 8
  %7 = icmp ne %struct.env_lst* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.env_lst*, %struct.env_lst** %4, align 8
  %10 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i8*, i8** %2, align 8
  ret i8* %14
}

declare dso_local %struct.env_lst* @env_find(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
