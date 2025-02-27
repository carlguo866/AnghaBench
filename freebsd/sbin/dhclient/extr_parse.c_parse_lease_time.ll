; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_parse_lease_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_parse_lease_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Expecting numeric lease time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_lease_time(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @next_token(i8** %5, i32* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NUMBER, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @parse_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @skip_to_semi(i32* %14)
  br label %27

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @convert_num(i8* %18, i8* %19, i32 10, i32 32)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohl(i32 %22)
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @parse_semi(i32* %25)
  br label %27

27:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i32 @convert_num(i8*, i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @parse_semi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
