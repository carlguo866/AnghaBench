; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_get_usage.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_get_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"\09add [-fgLnP] [-o property=value] <pool> <vdev> ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"\09attach [-fw] [-o property=value] <pool> <device> <new-device>\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09clear [-nF] <pool> [device]\0A\00", align 1
@.str.3 = private unnamed_addr constant [132 x i8] c"\09create [-fnd] [-o property=value] ... \0A\09    [-O file-system-property=value] ... \0A\09    [-m mountpoint] [-R root] <pool> <vdev> ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\09checkpoint [-d [-w]] <pool> ...\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\09destroy [-f] <pool>\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\09detach <pool> <device>\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\09export [-af] <pool> ...\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\09history [-il] [<pool>] ...\0A\00", align 1
@.str.9 = private unnamed_addr constant [318 x i8] c"\09import [-d dir] [-D]\0A\09import [-o mntopts] [-o property=value] ... \0A\09    [-d dir | -c cachefile] [-D] [-l] [-f] [-m] [-N] [-R root] [-F [-n]] -a\0A\09import [-o mntopts] [-o property=value] ... \0A\09    [-d dir | -c cachefile] [-D] [-l] [-f] [-m] [-N] [-R root] [-F [-n]]\0A\09    [--rewind-to-checkpoint] <pool | id> [newpool]\0A\00", align 1
@.str.10 = private unnamed_addr constant [142 x i8] c"\09iostat [[[-c [script1,script2,...][-lq]]|[-rw]] [-T d | u] [-ghHLpPvy]\0A\09    [[pool ...]|[pool vdev ...]|[vdev ...]] [[-n] interval [count]]\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\09labelclear [-f] <vdev>\0A\00", align 1
@.str.12 = private unnamed_addr constant [82 x i8] c"\09list [-gHLpPv] [-o property[,...]] [-T d|u] [pool] ... \0A\09    [interval [count]]\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"\09offline [-f] [-t] <pool> <device> ...\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\09online [-e] <pool> <device> ...\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"\09replace [-fw] [-o property=value] <pool> <device> [new-device]\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\09remove [-npsw] <pool> <device> ...\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"\09reopen [-n] <pool>\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"\09initialize [-c | -s] [-w] <pool> [<device> ...]\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"\09scrub [-s | -p] [-w] <pool> ...\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\09resilver <pool> ...\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\09trim [-d] [-r <rate>] [-c | -s] <pool> [<device> ...]\0A\00", align 1
@.str.22 = private unnamed_addr constant [96 x i8] c"\09status [-c [script1,script2,...]] [-igLpPstvxD]  [-T d|u] [pool] ... \0A\09    [interval [count]]\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"\09upgrade\0A\09upgrade -v\0A\09upgrade [-V version] <-a | pool ...>\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"\09events [-vHf [pool] | -c]\0A\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"\09get [-Hp] [-o \22all\22 | field[,...]] <\22all\22 | property[,...]> <pool> ...\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"\09set <property=value> <pool> \0A\00", align 1
@.str.27 = private unnamed_addr constant [100 x i8] c"\09split [-gLnPl] [-R altroot] [-o mntopts]\0A\09    [-o property=value] <pool> <newpool> [<device> ...]\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"\09reguid <pool>\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"\09sync [pool] ...\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"\09version\0A\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"\09wait [-Hp] [-T d|u] [-t <activity>[,...]] <pool> [interval]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_usage(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %69 [
    i32 159, label %5
    i32 158, label %7
    i32 156, label %9
    i32 155, label %11
    i32 157, label %13
    i32 154, label %15
    i32 153, label %17
    i32 151, label %19
    i32 149, label %21
    i32 148, label %23
    i32 146, label %25
    i32 145, label %27
    i32 144, label %29
    i32 143, label %31
    i32 142, label %33
    i32 138, label %35
    i32 140, label %37
    i32 139, label %39
    i32 147, label %41
    i32 136, label %43
    i32 137, label %45
    i32 131, label %47
    i32 133, label %49
    i32 130, label %51
    i32 152, label %53
    i32 150, label %55
    i32 135, label %57
    i32 134, label %59
    i32 141, label %61
    i32 132, label %63
    i32 129, label %65
    i32 128, label %67
  ]

5:                                                ; preds = %1
  %6 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  br label %71

7:                                                ; preds = %1
  %8 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %71

9:                                                ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %71

11:                                               ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  br label %71

13:                                               ; preds = %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %71

15:                                               ; preds = %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %71

17:                                               ; preds = %1
  %18 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %71

19:                                               ; preds = %1
  %20 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %71

21:                                               ; preds = %1
  %22 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  br label %71

23:                                               ; preds = %1
  %24 = call i8* @gettext(i8* getelementptr inbounds ([318 x i8], [318 x i8]* @.str.9, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  br label %71

25:                                               ; preds = %1
  %26 = call i8* @gettext(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.10, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %71

27:                                               ; preds = %1
  %28 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  store i8* %28, i8** %2, align 8
  br label %71

29:                                               ; preds = %1
  %30 = call i8* @gettext(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.12, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  br label %71

31:                                               ; preds = %1
  %32 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  br label %71

33:                                               ; preds = %1
  %34 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  store i8* %34, i8** %2, align 8
  br label %71

35:                                               ; preds = %1
  %36 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0))
  store i8* %36, i8** %2, align 8
  br label %71

37:                                               ; preds = %1
  %38 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  store i8* %38, i8** %2, align 8
  br label %71

39:                                               ; preds = %1
  %40 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  store i8* %40, i8** %2, align 8
  br label %71

41:                                               ; preds = %1
  %42 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0))
  store i8* %42, i8** %2, align 8
  br label %71

43:                                               ; preds = %1
  %44 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  store i8* %44, i8** %2, align 8
  br label %71

45:                                               ; preds = %1
  %46 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  store i8* %46, i8** %2, align 8
  br label %71

47:                                               ; preds = %1
  %48 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0))
  store i8* %48, i8** %2, align 8
  br label %71

49:                                               ; preds = %1
  %50 = call i8* @gettext(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.22, i64 0, i64 0))
  store i8* %50, i8** %2, align 8
  br label %71

51:                                               ; preds = %1
  %52 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0))
  store i8* %52, i8** %2, align 8
  br label %71

53:                                               ; preds = %1
  %54 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  store i8* %54, i8** %2, align 8
  br label %71

55:                                               ; preds = %1
  %56 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0))
  store i8* %56, i8** %2, align 8
  br label %71

57:                                               ; preds = %1
  %58 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0))
  store i8* %58, i8** %2, align 8
  br label %71

59:                                               ; preds = %1
  %60 = call i8* @gettext(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.27, i64 0, i64 0))
  store i8* %60, i8** %2, align 8
  br label %71

61:                                               ; preds = %1
  %62 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  store i8* %62, i8** %2, align 8
  br label %71

63:                                               ; preds = %1
  %64 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  store i8* %64, i8** %2, align 8
  br label %71

65:                                               ; preds = %1
  %66 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  store i8* %66, i8** %2, align 8
  br label %71

67:                                               ; preds = %1
  %68 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i64 0, i64 0))
  store i8* %68, i8** %2, align 8
  br label %71

69:                                               ; preds = %1
  %70 = call i32 (...) @abort() #3
  unreachable

71:                                               ; preds = %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i8* @gettext(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
