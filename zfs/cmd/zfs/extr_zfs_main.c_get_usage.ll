; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_get_usage.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_get_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [68 x i8] c"\09clone [-p] [-o property=value] ... <snapshot> <filesystem|volume>\0A\00", align 1
@.str.1 = private unnamed_addr constant [129 x i8] c"\09create [-Pnpv] [-o property=value] ... <filesystem>\0A\09create [-Pnpsv] [-b blocksize] [-o property=value] ... -V <size> <volume>\0A\00", align 1
@.str.2 = private unnamed_addr constant [141 x i8] c"\09destroy [-fnpRrv] <filesystem|volume>\0A\09destroy [-dnpRrv] <filesystem|volume>@<snap>[%<snap>][,...]\0A\09destroy <filesystem|volume>#<bookmark>\0A\00", align 1
@.str.3 = private unnamed_addr constant [158 x i8] c"\09get [-rHp] [-d max] [-o \22all\22 | field[,...]]\0A\09    [-t type[,...]] [-s source[,...]]\0A\09    <\22all\22 | property[,...]> [filesystem|volume|snapshot|bookmark] ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"\09inherit [-rS] <property> <filesystem|volume|snapshot> ...\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"\09upgrade [-v]\0A\09upgrade [-r] [-V version] <-a | filesystem ...>\0A\00", align 1
@.str.6 = private unnamed_addr constant [133 x i8] c"\09list [-Hp] [-r|-d max] [-o property[,...]] [-s property]...\0A\09    [-S property]... [-t type[,...]] [filesystem|volume|snapshot] ...\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"\09mount\0A\09mount [-flvO] [-o opts] <-a | filesystem>\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"\09promote <clone-filesystem>\0A\00", align 1
@.str.9 = private unnamed_addr constant [230 x i8] c"\09receive [-vnsFhu] [-o <property>=<value>] ... [-x <property>] ...\0A\09    <filesystem|volume|snapshot>\0A\09receive [-vnsFhu] [-o <property>=<value>] ... [-x <property>] ... \0A\09    [-d | -e] <filesystem>\0A\09receive -A <filesystem|volume>\0A\00", align 1
@.str.10 = private unnamed_addr constant [161 x i8] c"\09rename [-f] <filesystem|volume|snapshot> <filesystem|volume|snapshot>\0A\09rename [-f] -p <filesystem|volume> <filesystem|volume>\0A\09rename -r <snapshot> <snapshot>\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"\09rollback [-rRf] <snapshot>\0A\00", align 1
@.str.12 = private unnamed_addr constant [233 x i8] c"\09send [-DnPpRvLecwhb] [-[i|I] snapshot] <snapshot>\0A\09send [-nvPLecw] [-i snapshot|bookmark] <filesystem|volume|snapshot>\0A\09send [-DnPpvLec] [-i bookmark|snapshot] --redact <bookmark> <snapshot>\0A\09send [-nvPe] -t <receive_resume_token>\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"\09set <property=value> ... <filesystem|volume|snapshot> ...\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\09share [-l] <-a [nfs|smb] | filesystem>\0A\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"\09snapshot [-r] [-o property=value] ... <filesystem|volume>@<snap> ...\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"\09unmount [-fu] <-a | filesystem|mountpoint>\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"\09unshare <-a [nfs|smb] | filesystem|mountpoint>\0A\00", align 1
@.str.18 = private unnamed_addr constant [291 x i8] c"\09allow <filesystem|volume>\0A\09allow [-ldug] <\22everyone\22|user|group>[,...] <perm|@setname>[,...]\0A\09    <filesystem|volume>\0A\09allow [-ld] -e <perm|@setname>[,...] <filesystem|volume>\0A\09allow -c <perm|@setname>[,...] <filesystem|volume>\0A\09allow -s @setname <perm|@setname>[,...] <filesystem|volume>\0A\00", align 1
@.str.19 = private unnamed_addr constant [292 x i8] c"\09unallow [-rldug] <\22everyone\22|user|group>[,...]\0A\09    [<perm|@setname>[,...]] <filesystem|volume>\0A\09unallow [-rld] -e [<perm|@setname>[,...]] <filesystem|volume>\0A\09unallow [-r] -c [<perm|@setname>[,...]] <filesystem|volume>\0A\09unallow [-r] -s @setname [<perm|@setname>[,...]] <filesystem|volume>\0A\00", align 1
@.str.20 = private unnamed_addr constant [110 x i8] c"\09userspace [-Hinp] [-o field[,...]] [-s field] ...\0A\09    [-S field] ... [-t type[,...]] <filesystem|snapshot>\0A\00", align 1
@.str.21 = private unnamed_addr constant [111 x i8] c"\09groupspace [-Hinp] [-o field[,...]] [-s field] ...\0A\09    [-S field] ... [-t type[,...]] <filesystem|snapshot>\0A\00", align 1
@.str.22 = private unnamed_addr constant [96 x i8] c"\09projectspace [-Hp] [-o field[,...]] [-s field] ... \0A\09    [-S field] ... <filesystem|snapshot>\0A\00", align 1
@.str.23 = private unnamed_addr constant [174 x i8] c"\09project [-d|-r] <directory|file ...>\0A\09project -c [-0] [-d|-r] [-p id] <directory|file ...>\0A\09project -C [-k] [-r] <directory ...>\0A\09project [-p id] [-r] [-s] <directory ...>\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\09hold [-r] <tag> <snapshot> ...\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"\09holds [-rH] <snapshot> ...\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"\09release [-r] <tag> <snapshot> ...\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"\09diff [-FHt] <snapshot> [snapshot|filesystem]\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"\09bookmark <snapshot> <bookmark>\0A\00", align 1
@.str.29 = private unnamed_addr constant [106 x i8] c"\09program [-jn] [-t <instruction limit>] [-m <memory limit (b)>]\0A\09    <pool> <program file> [lua args...]\0A\00", align 1
@.str.30 = private unnamed_addr constant [61 x i8] c"\09load-key [-rn] [-L <keylocation>] <-a | filesystem|volume>\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"\09unload-key [-r] <-a | filesystem|volume>\0A\00", align 1
@.str.32 = private unnamed_addr constant [161 x i8] c"\09change-key [-l] [-o keyformat=<value>]\0A\09    [-o keylocation=<value>] [-o pbkfd2iters=<value>]\0A\09    <filesystem|volume>\0A\09change-key -i [-l] <filesystem|volume>\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"\09version\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"\09redact <snapshot> <bookmark> <redaction_snapshot> ...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_usage(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %75 [
    i32 158, label %5
    i32 157, label %7
    i32 156, label %9
    i32 154, label %11
    i32 150, label %13
    i32 130, label %15
    i32 149, label %17
    i32 147, label %19
    i32 144, label %21
    i32 143, label %23
    i32 140, label %25
    i32 139, label %27
    i32 138, label %29
    i32 137, label %31
    i32 136, label %33
    i32 135, label %35
    i32 132, label %37
    i32 131, label %39
    i32 162, label %41
    i32 134, label %43
    i32 129, label %45
    i32 153, label %47
    i32 145, label %49
    i32 146, label %51
    i32 152, label %53
    i32 151, label %55
    i32 141, label %57
    i32 155, label %59
    i32 161, label %61
    i32 159, label %63
    i32 148, label %65
    i32 133, label %67
    i32 160, label %69
    i32 128, label %71
    i32 142, label %73
  ]

5:                                                ; preds = %1
  %6 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  br label %77

7:                                                ; preds = %1
  %8 = call i8* @gettext(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  br label %77

9:                                                ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %77

11:                                               ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %2, align 8
  br label %77

13:                                               ; preds = %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  br label %77

15:                                               ; preds = %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  br label %77

17:                                               ; preds = %1
  %18 = call i8* @gettext(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.6, i64 0, i64 0))
  store i8* %18, i8** %2, align 8
  br label %77

19:                                               ; preds = %1
  %20 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  store i8* %20, i8** %2, align 8
  br label %77

21:                                               ; preds = %1
  %22 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  br label %77

23:                                               ; preds = %1
  %24 = call i8* @gettext(i8* getelementptr inbounds ([230 x i8], [230 x i8]* @.str.9, i64 0, i64 0))
  store i8* %24, i8** %2, align 8
  br label %77

25:                                               ; preds = %1
  %26 = call i8* @gettext(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.10, i64 0, i64 0))
  store i8* %26, i8** %2, align 8
  br label %77

27:                                               ; preds = %1
  %28 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  store i8* %28, i8** %2, align 8
  br label %77

29:                                               ; preds = %1
  %30 = call i8* @gettext(i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.12, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  br label %77

31:                                               ; preds = %1
  %32 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  br label %77

33:                                               ; preds = %1
  %34 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  store i8* %34, i8** %2, align 8
  br label %77

35:                                               ; preds = %1
  %36 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.15, i64 0, i64 0))
  store i8* %36, i8** %2, align 8
  br label %77

37:                                               ; preds = %1
  %38 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  store i8* %38, i8** %2, align 8
  br label %77

39:                                               ; preds = %1
  %40 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0))
  store i8* %40, i8** %2, align 8
  br label %77

41:                                               ; preds = %1
  %42 = call i8* @gettext(i8* getelementptr inbounds ([291 x i8], [291 x i8]* @.str.18, i64 0, i64 0))
  store i8* %42, i8** %2, align 8
  br label %77

43:                                               ; preds = %1
  %44 = call i8* @gettext(i8* getelementptr inbounds ([292 x i8], [292 x i8]* @.str.19, i64 0, i64 0))
  store i8* %44, i8** %2, align 8
  br label %77

45:                                               ; preds = %1
  %46 = call i8* @gettext(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.20, i64 0, i64 0))
  store i8* %46, i8** %2, align 8
  br label %77

47:                                               ; preds = %1
  %48 = call i8* @gettext(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.21, i64 0, i64 0))
  store i8* %48, i8** %2, align 8
  br label %77

49:                                               ; preds = %1
  %50 = call i8* @gettext(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.22, i64 0, i64 0))
  store i8* %50, i8** %2, align 8
  br label %77

51:                                               ; preds = %1
  %52 = call i8* @gettext(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.23, i64 0, i64 0))
  store i8* %52, i8** %2, align 8
  br label %77

53:                                               ; preds = %1
  %54 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  store i8* %54, i8** %2, align 8
  br label %77

55:                                               ; preds = %1
  %56 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  store i8* %56, i8** %2, align 8
  br label %77

57:                                               ; preds = %1
  %58 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0))
  store i8* %58, i8** %2, align 8
  br label %77

59:                                               ; preds = %1
  %60 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0))
  store i8* %60, i8** %2, align 8
  br label %77

61:                                               ; preds = %1
  %62 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  store i8* %62, i8** %2, align 8
  br label %77

63:                                               ; preds = %1
  %64 = call i8* @gettext(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.29, i64 0, i64 0))
  store i8* %64, i8** %2, align 8
  br label %77

65:                                               ; preds = %1
  %66 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.30, i64 0, i64 0))
  store i8* %66, i8** %2, align 8
  br label %77

67:                                               ; preds = %1
  %68 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
  store i8* %68, i8** %2, align 8
  br label %77

69:                                               ; preds = %1
  %70 = call i8* @gettext(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.32, i64 0, i64 0))
  store i8* %70, i8** %2, align 8
  br label %77

71:                                               ; preds = %1
  %72 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  store i8* %72, i8** %2, align 8
  br label %77

73:                                               ; preds = %1
  %74 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0))
  store i8* %74, i8** %2, align 8
  br label %77

75:                                               ; preds = %1
  %76 = call i32 (...) @abort() #3
  unreachable

77:                                               ; preds = %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
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
