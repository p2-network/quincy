#!/usr/bin/env python3

import argparse
import os
import sys


def build_arg_parser():
    parser = argparse.ArgumentParser(description='Get a vault password from user keyring')

    parser.add_argument('--vault-id', action='store', default=None,
                        dest='vault_id',
                        help='name of the vault secret to get from keyring')
    return parser

def main():
    keyname = 'VAULT_PASSWORD_DEFAULT'

    # Read values from command line (which override the previous if given)
    arg_parser = build_arg_parser()
    args = arg_parser.parse_args()
    keyname = args.vault_id or keyname

    secret = os.environ.get('VAULT_PASSWORD_' + keyname)

    sys.stdout.write('%s\n' % secret)

    sys.exit(0)


if __name__ == '__main__':
    main()