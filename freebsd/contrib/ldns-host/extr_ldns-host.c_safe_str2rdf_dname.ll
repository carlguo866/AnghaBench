; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_safe_str2rdf_dname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns-host/extr_ldns-host.c_safe_str2rdf_dname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"'%s' is not a legal name (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @safe_str2rdf_dname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @safe_str2rdf_dname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @ldns_str2rdf_dname(i32** %3, i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @LDNS_STATUS_OK, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ldns_get_errorstr_by_id(i32 %11)
  %13 = call i32 @die(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32*, i32** %3, align 8
  ret i32* %15
}

declare dso_local i32 @ldns_str2rdf_dname(i32**, i8*) #1

declare dso_local i32 @die(i32, i8*, i8*, i32) #1

declare dso_local i32 @ldns_get_errorstr_by_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
